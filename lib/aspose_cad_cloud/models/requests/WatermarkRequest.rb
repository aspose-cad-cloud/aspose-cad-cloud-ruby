 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="WatermarkRequest.rb">
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

  #
  # Request model for watermark operation.
  #
  class WatermarkRequest

        # Input drawing
        attr_accessor :drawing_data
        # Gets or sets output_format
        attr_accessor :output_format
        # JSON-serialized export options passed as zero-indexed multipart/form-data. Follow #/definitions/WatermarkRGB model definition.
        attr_accessor :watermark
        # Gets or sets output_type_ext
        attr_accessor :output_type_ext
	
        #
        # Initializes a new instance.
        # @param drawing_data Input drawing
        # @param output_format 
        # @param watermark JSON-serialized export options passed as zero-indexed multipart/form-data. Follow #/definitions/WatermarkRGB model definition.
        # @param output_type_ext 
        def initialize(drawing_data, output_format, watermark, output_type_ext = nil)
           self.drawing_data = drawing_data
           self.output_format = output_format
           self.watermark = watermark
           self.output_type_ext = output_type_ext
        end
  end
end
