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
        filename = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'pdf'

        request = ConvertRequest.new(File.open(local_test_folder + filename, "r"), output_format)
        result = @Cad_api.convert_with_http_info(request)
        assert_equal 200, result[1]
      end
  
      #
      # Test paper_to_cad
      #
      def test_paper_to_cad
        filename = 'BIKE.png'
        output_format = 'dxf'

        request = PaperToCadRequest.new File.open(local_test_folder + filename, "r"), output_format
        result = @Cad_api.paper_to_cad_with_http_info request
        assert_equal 200, result[1]
      end

      #
      # Test watermark
      #
      def test_watermark
        filename = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        output_format = 'bmp'
        watermark_rgb = WatermarkRGB.new
        watermark_rgb.text = "watermark"
        watermark_rgb.r = 0
        watermark_rgb.g = 255
        watermark_rgb.b = 0

        request = WatermarkRequest.new File.open(local_test_folder + filename, "r"), output_format, watermark_rgb.to_hash.to_json
        result = @Cad_api.watermark_with_http_info request
        assert_equal 200, result[1]
      end

      #
      # Test extract_text
      #
      def test_extract_text
        filename = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'

        request = ExtractTextRequest.new File.open(local_test_folder + filename, "r")
        result = @Cad_api.extract_text_with_http_info request
        assert_equal 200, result[1]
      end

      #
      # Test extract_metadata
      #
      def test_extract_metadata
        filename = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
        request = ExtractMetadataRequest.new(File.open(local_test_folder + filename, "r"), "json")
        result = @Cad_api.extract_metadata_with_http_info(request)
        assert_equal 200, result[1]
      end

      #
      # Test post_edit_metadata
      #
      def test_post_edit_metadata
        filename = '910609.dxf'

        request = EditMetadataRequest.new File.open(local_test_folder + filename, "r")
        result = @Cad_api.edit_metadata_with_http_info request
        assert_equal 200, result[1]
      end

      #
      # Test put_edit_metadata
      #
      def test_put_edit_metadata
        filename = '910609.dxf'
        dxf_metadata = "{\"Name\":\"DxfImage\",\"Level\":0,\"Components\":[{\"Name\":\"SummaryInfoWrapper\",\"Level\":0,\"Components\":[{\"Name\":\"Title\",\"Value\":\"TestValue\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Subject\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Author\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Keywords\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"Comments\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"LastSavedBy\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"RevisionNumber\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"HyperlinkBase\",\"Type\":\"String\",\"Level\":0,\"Components\":[]},{\"Name\":\"EditingTime\",\"Value\":\"01:59:54.7930000\",\"Type\":\"TimeSpan\",\"Level\":0,\"Components\":[]},{\"Name\":\"CreateDateTime\",\"Value\":\"1888-04-12T07:59:59\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"ModifiedDateTime\",\"Value\":\"1998-03-26T10:23:29\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"CreateDateTimeUtc\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]},{\"Name\":\"ModifiedDateTimeUtc\",\"Type\":\"DateTime\",\"Level\":0,\"Components\":[]}]}]}"

        request = PutEditMetadataRequest.new File.open(local_test_folder + filename, "r"), dxf_metadata
        result = @Cad_api.put_edit_metadata_with_http_info request
        assert_equal 200, result[1]
      end
    end
  end