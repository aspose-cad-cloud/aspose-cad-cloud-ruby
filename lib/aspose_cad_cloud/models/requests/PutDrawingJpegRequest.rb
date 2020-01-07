 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutDrawingJpegRequest.rb">
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
  # Request model for put_drawing_jpeg operation.
  #
  class PutDrawingJpegRequest

        # Input drawing
        attr_accessor :drawing_data
        # JSON-serialized export options passed as zero-indexed multipart/form-data. Follow #/definitions/JpegOptionsDTO model definition.
        attr_accessor :options
        # Path to updated file (if this is empty, response contains streamed image).
        attr_accessor :out_path
        # Your Aspose Cloud Storage name.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param drawing_data Input drawing
        # @param options JSON-serialized export options passed as zero-indexed multipart/form-data. Follow #/definitions/JpegOptionsDTO model definition.
        # @param out_path Path to updated file (if this is empty, response contains streamed image).
        # @param storage Your Aspose Cloud Storage name.
        def initialize(drawing_data, options = nil, out_path = nil, storage = nil)
           self.drawing_data = drawing_data
           self.options = options
           self.out_path = out_path
           self.storage = storage
        end
  end
end
