#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="bmp_api_tests.rb">
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
  require_relative 'base_test_context'
  class BmpApiTests < BaseTestContext
    #
    # Test post_bmp
    #
    def test_post_bmp
      input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
      output_format = 'bmp'
      method_name = '_post_bmp'
      folder = cloud_test_data_folder

      st_request = UploadFileRequest.new folder, File.open(local_test_folder + input_file_name, "r")
      @Cad_api.upload_file st_request

      result_file_name = input_file_name + method_name  + '.' + output_format

      options = BmpOptionsDTO.new
      vector_raster_options = CadRasterizationOptionsDTO.new
      vector_raster_options.page_height = 100
      vector_raster_options.page_width = 200

      options.vector_rasterization_options = vector_raster_options

      post_request(
        method_name,
        input_file_name,
        result_file_name,
        lambda do |input_stream|
          request = PostDrawingBmpRequest.new input_file_name, options, folder
          @Cad_api.post_drawing_bmp request
        end,
        nil,
        false,
        $storage_name
      )
    end

    #
    # Test put_bmp
    #
    def test_put_bmp
      input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
      output_format = 'bmp'
      method_name = '_put_bmp'

      result_file_name = input_file_name + method_name  + '.' + output_format

      post_request(
        method_name,
        input_file_name,
        result_file_name,
        lambda do |input_stream|
          request = PutDrawingBmpRequest.new(File.open(local_test_folder + input_file_name, "r"))
          @Cad_api.put_drawing_bmp(request)
        end,
        nil,
        false,
        $storage_name
      )
    end

    #
    # Test put_with_options
    #
    def test_put_bmp_with_options
      input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
      output_format = 'bmp'
      method_name = '_put_bmp_with_options'

      result_file_name = input_file_name + method_name  + '.' + output_format

      options = BmpOptionsDTO.new
      vector_raster_options = CadRasterizationOptionsDTO.new
      vector_raster_options.page_height = 100
      vector_raster_options.page_width = 200

      options.vector_rasterization_options = vector_raster_options

      post_request(
        method_name,
        input_file_name,
        result_file_name,
        lambda do |input_stream|
          request = PutDrawingBmpRequest.new(File.open(local_test_folder + input_file_name, "r"), nil, options.to_hash.to_json, nil)
          @Cad_api.put_drawing_bmp(request)
        end,
        nil,
        false,
        $storage_name
      )
    end
  end
end