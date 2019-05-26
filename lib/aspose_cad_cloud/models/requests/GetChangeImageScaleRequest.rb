 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="GetChangeImageScaleRequest.rb">
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
  # Request model for get_change_image_scale operation.
  #
  class GetChangeImageScaleRequest

        # The image name.
        attr_accessor :name
        # Output file format. Valid formats: BMP, PNG, JPG, JPEG, JPEG2000, TIF, TIFF, PSD, GIF, PDF, WMF.
        attr_accessor :format
        # New width of the scaled image.
        attr_accessor :new_width
        # New height of the scaled image.
        attr_accessor :new_height
        # Original drawing folder.
        attr_accessor :folder
        # File storage, which has to be used.
        attr_accessor :storage
        # Path to updated file, if this is empty, response contains streamed image. 
        attr_accessor :out_path
	
        #
        # Initializes a new instance.
        # @param name The image name.
        # @param format Output file format. Valid formats: BMP, PNG, JPG, JPEG, JPEG2000, TIF, TIFF, PSD, GIF, PDF, WMF.
        # @param new_width New width of the scaled image.
        # @param new_height New height of the scaled image.
        # @param folder Original drawing folder.
        # @param storage File storage, which has to be used.
        # @param out_path Path to updated file, if this is empty, response contains streamed image. 
        def initialize(name, format, new_width, new_height, folder = nil, storage = nil, out_path = nil)
           self.name = name
           self.format = format
           self.new_width = new_width
           self.new_height = new_height
           self.folder = folder
           self.storage = storage
           self.out_path = out_path
        end
  end
end
