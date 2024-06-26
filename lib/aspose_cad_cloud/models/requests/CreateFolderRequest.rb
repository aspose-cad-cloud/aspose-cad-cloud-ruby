 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="CreateFolderRequest.rb">
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
  # Request model for create_folder operation.
  #
  class CreateFolderRequest

        # Folder path to create e.g. 'folder_1/folder_2/'
        attr_accessor :path
        # Storage name
        attr_accessor :storage_name
	
        #
        # Initializes a new instance.
        # @param path Folder path to create e.g. 'folder_1/folder_2/'
        # @param storage_name Storage name
        def initialize(path, storage_name = nil)
           self.path = path
           self.storage_name = storage_name
        end
  end
end
