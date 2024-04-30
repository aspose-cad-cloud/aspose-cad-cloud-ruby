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

        # Gets or sets output_format
        attr_accessor :output_format
        # Gets or sets drawing
        attr_accessor :drawing
        # Gets or sets watermark_rgb
        attr_accessor :watermark_rgb
        # Gets or sets output_type_ext
        attr_accessor :output_type_ext
	
        #
        # Initializes a new instance.
        # @param output_format 
        # @param drawing 
        # @param watermark_rgb 
        # @param output_type_ext 
        def initialize(output_format, drawing = nil, watermark_rgb = nil, output_type_ext = nil)
           self.output_format = output_format
           self.drawing = drawing
           self.watermark_rgb = watermark_rgb
           self.output_type_ext = output_type_ext
        end
  end
end
