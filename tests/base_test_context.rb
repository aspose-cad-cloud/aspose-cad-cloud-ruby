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
  require_relative '../lib/aspose_cad_cloud'

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

      st_request = CreateFolderRequest.new remote_test_folder
      @Cad_api.create_folder st_request
    end

    def local_test_folder
      'TestData/'
    end

    def remote_test_folder
      'CloudTestRuby/'
    end

    def remote_test_out
      'CloudTestRuby/'
    end

    def local_common_folder
      'TestData/Common/'
    end
  end
end
