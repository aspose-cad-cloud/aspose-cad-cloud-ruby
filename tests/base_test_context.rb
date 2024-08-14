#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="base_test_context.rb">
#   Copyright (c) 2018 Aspose.CAD Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#
module AsposeCadCloud
  require 'openssl'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  require "minitest/autorun"
  require "minitest/unit"
  require 'json'
  require_relative '../lib/aspose_cad_cloud'

  require 'faraday/middleware'
  require 'faraday/multipart'
  class BaseTestContext < Minitest::Test
    include MiniTest::Assertions
    def setup
      #ENV['http_proxy'] = 'http://localhost:8888'

      file = File.read('TestData/serverAccess.json')
      if file.length == 0
        raise ArgumentError, 'Put your credentials into TestData/serverAccess.json'
      end

      creds = JSON.parse(file)

      AsposeCadCloud.configure do |config|
        config.api_key['api_key'] = creds['AppKey']
        config.api_key['app_sid'] = creds['AppSid']
        config.host = creds['BaseURL']

        client = ApiClient.new config
        @Cad_api = CadApi.new client
      end

      $storage_name = creds['Storage']
      st_request = CreateFolderRequest.new cloud_test_data_folder
      @Cad_api.create_folder st_request

      st_request = CreateFolderRequest.new cloud_test_folder
      @Cad_api.create_folder st_request
    end

    $storage_name = 'CAD-QA'
    $override_reference_files = true

    def local_test_folder
      'TestData/'
    end

    def local_temp_folder
      'CloudTempRuby/'
    end

    def reference_data_folder
      'ReferenceData/'
    end

    def cloud_test_data_folder
      'CloudTestDataRuby/'
    end

    def cloud_test_folder
      'CloudTestRuby/'
    end

    def local_common_folder
      'TestData/Common/'
    end

    def reference_file_override(result_path, reference_file_path)
      if $override_reference_files
        FileUtils.cp(result_path, reference_file_path)
      end
    end

    def post_request(test_name, input_file_name, result_file_name, input_handler, out_path, save_to_storage, storage)
      # Implement the logic to handle the request based on parameters
      # This is a stub for the actual logic
      puts "Running test: #{test_name}"
      puts "Name: #{input_file_name}"


      if save_to_storage
        if out_path.nil?
          raise test_name + "Out path is empty!"
        end

        exist_object = ObjectExistsRequest.new out_path storage nil
        is_exist = @Cad_api.object_exists exist_object

        # remove output file from the storage (if exists)
        if is_exist
          delete_file_request = DeleteFileRequest.new out_path storage
          @Cad_api.delete_file delete_file_request
        end
      end

      # Call the input handler (which is a proc/lambda)
      response = input_handler.call(input_file_name)

      reference_file_path = reference_data_folder + result_file_name

      unless out_path.nil?
        response = DownloadFileRequest.new out_path storage
      end

      reference_file_override(response, reference_file_path)

      assert_equal get_file_size(response), get_file_size(reference_file_path)
    end

    def get_file_size(path)
      File.open(path, 'r') do |file|
        begin
          return File.size(file)
        end
      end
    end

  end
end
