 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutDrawingResizeRequest.rb">
 #   Copyright (c) 2018 Aspose.Cad for Cloud
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
  # Request model for put_drawing_resize operation.
  #
  class PutDrawingResizeRequest

        # Input drawing
        attr_accessor :drawing_data
        # Resulting image format.
        attr_accessor :output_format
        # New width.
        attr_accessor :new_width
        # New height.
        attr_accessor :new_height
        # Path to updated file (if this is empty, response contains streamed image).
        attr_accessor :out_path
        # Your Aspose Cloud Storage name.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param drawing_data Input drawing
        # @param output_format Resulting image format.
        # @param new_width New width.
        # @param new_height New height.
        # @param out_path Path to updated file (if this is empty, response contains streamed image).
        # @param storage Your Aspose Cloud Storage name.
        def initialize(drawing_data, output_format, new_width, new_height, out_path = nil, storage = nil)
           self.drawing_data = drawing_data
           self.output_format = output_format
           self.new_width = new_width
           self.new_height = new_height
           self.out_path = out_path
           self.storage = storage
        end
  end
end
