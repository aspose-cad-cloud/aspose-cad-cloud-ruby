#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="live_api_tests.rb">
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
    class LiveApiTests < BaseTestContext
      #
      # Test convert
      #
      def test_convert
        input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'png'
        method_name = '_convert'

        result_file_name = input_file_name + method_name  + '.' + output_format

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = ConvertRequest.new(File.open(local_test_folder + input_file_name, "r"), output_format)
            @Cad_api.convert(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test paper_to_cad
      #
      def test_paper_to_cad
        input_file_name = 'BIKE.png'
        output_format = 'dxf'
        method_name = '_paper_to_cad'
        folder = cloud_test_folder

        result_file_name = input_file_name + method_name  + '.' + output_format

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = PaperToCadRequest.new(File.open(local_test_folder + input_file_name, "r"), output_format)
            @Cad_api.paper_to_cad(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test watermark
      #
      def test_watermark
        input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'bmp'
        method_name = '_watermark'

        watermark_rgb = WatermarkRGB.new
        watermark_rgb.text = "watermark"
        watermark_rgb.r = 0
        watermark_rgb.g = 255
        watermark_rgb.b = 0

        result_file_name = input_file_name + method_name  + '.' + output_format



        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = WatermarkRequest.new File.open(local_test_folder + input_file_name, "r"), output_format, watermark_rgb.to_hash.to_json
            @Cad_api.watermark(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test extract_text
      #
      def test_text_extract
        input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'txt'
        method_name = '_text_extract'

        result_file_name = input_file_name + method_name  + '.' + output_format

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = ExtractTextRequest.new File.open(local_test_folder + input_file_name, "r")
            @Cad_api.extract_text(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test extract_metadata
      #
      def test_extract_metadata
        input_file_name = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'json'
        method_name = '_extract_metadata'

        result_file_name = input_file_name + method_name  + '.' + output_format

        request = ExtractMetadataRequest.new(File.open(local_test_folder + input_file_name, "r"), output_format)

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            @Cad_api.extract_metadata(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test post_edit_metadata
      #
      def test_post_edit_metadata
        input_file_name = '910609.dxf'
        output_format = 'json'
        method_name = '_post_edit_metadata'

        result_file_name = input_file_name + method_name  + '.' + output_format

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = EditMetadataRequest.new File.open(local_test_folder + input_file_name, "r")
            @Cad_api.edit_metadata(request)
          end,
          nil,
          false,
          $storage_name
        )
      end

      #
      # Test put_edit_metadata
      #
      def test_put_edit_metadata
        input_file_name = '910609.dxf'
        output_format = 'dxf'
        method_name = '_put_edit_metadata'
        dxf_metadata = "{\"Name\":\"DxfImage\",\"Level\":0,\"Components\":[{\"Name\":\"SummaryInfoWrapper\",\"Level\":0,\"Components\":[{\"Name\":\"Title\",\"Value\":\"TestValue\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Subject\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Author\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Keywords\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Comments\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"LastSavedBy\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"RevisionNumber\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"HyperlinkBase\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"EditingTime\",\"Value\":\"01:59:54.7930000\",\"Type\":\"TimeSpan\",\"Level\":0,\"Components\":[]},{\"Name\":\"CreateDateTime\",\"Value\":\"1888-04-12T07:59:59\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"ModifiedDateTime\",\"Value\":\"1998-03-26T10:23:29\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"CreateDateTimeUtc\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"ModifiedDateTimeUtc\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]}]}]}"

        result_file_name = input_file_name + method_name  + '.' + output_format

        post_request(
          method_name,
          input_file_name,
          result_file_name,
          lambda do |input_stream|
            request = PutEditMetadataRequest.new File.open(local_test_folder + input_file_name, "r"), dxf_metadata
            @Cad_api.put_edit_metadata(request)
          end,
          nil,
          false,
          $storage_name
        )
      end
    end
end