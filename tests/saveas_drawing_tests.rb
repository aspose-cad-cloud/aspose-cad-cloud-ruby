#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="saveas_drawing_tests.rb">
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
  class SaveAsDrawingTests < BaseTestContext
    def test_folder
      ''
    end

    #
    # Test for saving drawing with specified format and fetch result through response
    #
    def test_post_drawing_save_as
      filename = '01.026.385.01.0.I SOPORTE ENFRIADOR.dwg'
      remote_name = filename
      output_format = 'pdf'
      dest_name = remote_test_out + remote_name + '.' + output_format

      st_request = PutCreateRequest.new remote_test_folder + remote_name, File.open(local_test_folder + filename, "r").read
      @storage_api.put_create st_request

      request = PostDrawingSaveAsRequest.new File.open(local_test_folder + filename, "r"), output_format, remote_test_folder + filename, nil
      result = @Cad_api.post_drawing_save_as_with_http_info request
      assert_equal 200, result[1]
    end

    #
    # Test for saving drawing with specified format and save result to storage
    #
    def test_get_drawing_save_as
      filename = '910609.dxf'
      remote_name = filename
      output_format = "jpg"
      dest_name = remote_test_out + remote_name

      st_request = PutCreateRequest.new remote_test_folder + remote_name, File.open(local_test_folder + filename, "r").read
      @storage_api.put_create st_request

      request = GetDrawingSaveAsRequest.new remote_name, output_format, remote_test_folder, nil, nil
      result = @Cad_api.get_drawing_save_as_with_http_info request
      assert_equal 200, result[1]
    end
  end
end