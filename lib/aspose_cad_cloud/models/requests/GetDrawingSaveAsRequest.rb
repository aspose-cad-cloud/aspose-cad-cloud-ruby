 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="GetDrawingSaveAsRequest.rb">
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
  # Request model for get_drawing_save_as operation.
  #
  class GetDrawingSaveAsRequest

        # Filename of an input drawing on a storage.
        attr_accessor :name
        # Resulting file format.
        attr_accessor :output_format
        # Folder with a drawing to process.
        attr_accessor :folder
        # Path to updated file (if this is empty, response contains streamed file).
        attr_accessor :out_path
        # Your Aspose Cloud Storage name.
        attr_accessor :storage
	
        #
        # Initializes a new instance.
        # @param name Filename of an input drawing on a storage.
        # @param output_format Resulting file format.
        # @param folder Folder with a drawing to process.
        # @param out_path Path to updated file (if this is empty, response contains streamed file).
        # @param storage Your Aspose Cloud Storage name.
        def initialize(name, output_format, folder = nil, out_path = nil, storage = nil)
           self.name = name
           self.output_format = output_format
           self.folder = folder
           self.out_path = out_path
           self.storage = storage
        end
  end
end
