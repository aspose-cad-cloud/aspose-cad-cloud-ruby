# -----------------------------------------------------------------------------------
# <copyright company="Aspose" file="cad_api.rb">
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
# -----------------------------------------------------------------------------------

require 'uri'

module AsposeCadCloud
  #
  # Aspose.CAD Cloud API
  #
  class CadApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      require_all '../models/requests'
      request_token
    end

    # Convert CAD drawing to DXF, DWG, DGN, DWF, DWFX, IFC, STL, STP, STEP, CGM, GLB, GLTF, DWT, IGES, PLT, CF2, OBJ, HPGL, IGS, PCL, FBX, PDF, SVG format.
    # 
    # @param request ConvertRequest
    # @return [File]
    def convert(request)
      data, _status_code, _headers = convert_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Convert CAD drawing to DXF, DWG, DGN, DWF, DWFX, IFC, STL, STP, STEP, CGM, GLB, GLTF, DWT, IGES, PLT, CF2, OBJ, HPGL, IGS, PCL, FBX, PDF, SVG format.
    # 
    # @param request ConvertRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def convert_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ConvertRequest

      @api_client.config.logger.debug 'Calling API: CadApi.convert ...' if @api_client.config.debugging
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.convert' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/Convert'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format

      if local_var_path.include? downcase_first_letter('outputTypeExt')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outputTypeExt') + '}', request.output_type_ext.to_s)
      else
        query_params[downcase_first_letter('outputTypeExt')] = request.output_type_ext unless request.output_type_ext.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#convert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy file
    # 
    # @param request CopyFileRequest
    # @return [nil]
    def copy_file(request)
      data, _status_code, _headers = copy_file_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Copy file
    # 
    # @param request CopyFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def copy_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFileRequest

      @api_client.config.logger.debug 'Calling API: CadApi.copy_file ...' if @api_client.config.debugging
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling CadApi.copy_file' if @api_client.config.client_side_validation && request.src_path.nil?
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling CadApi.copy_file' if @api_client.config.client_side_validation && request.dest_path.nil?
      # resource path
      local_var_path = '/cad/storage/file/copy/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('srcPath') + '}', request.src_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('destPath')] = request.dest_path

      if local_var_path.include? downcase_first_letter('srcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('srcStorageName') + '}', request.src_storage_name.to_s)
      else
        query_params[downcase_first_letter('srcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('destStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('destStorageName') + '}', request.dest_storage_name.to_s)
      else
        query_params[downcase_first_letter('destStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('versionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('versionId') + '}', request.version_id.to_s)
      else
        query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#copy_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Copy folder
    # 
    # @param request CopyFolderRequest
    # @return [nil]
    def copy_folder(request)
      data, _status_code, _headers = copy_folder_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Copy folder
    # 
    # @param request CopyFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def copy_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CopyFolderRequest

      @api_client.config.logger.debug 'Calling API: CadApi.copy_folder ...' if @api_client.config.debugging
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling CadApi.copy_folder' if @api_client.config.client_side_validation && request.src_path.nil?
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling CadApi.copy_folder' if @api_client.config.client_side_validation && request.dest_path.nil?
      # resource path
      local_var_path = '/cad/storage/folder/copy/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('srcPath') + '}', request.src_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('destPath')] = request.dest_path

      if local_var_path.include? downcase_first_letter('srcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('srcStorageName') + '}', request.src_storage_name.to_s)
      else
        query_params[downcase_first_letter('srcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('destStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('destStorageName') + '}', request.dest_storage_name.to_s)
      else
        query_params[downcase_first_letter('destStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#copy_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create the folder
    # 
    # @param request CreateFolderRequest
    # @return [nil]
    def create_folder(request)
      data, _status_code, _headers = create_folder_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Create the folder
    # 
    # @param request CreateFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def create_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? CreateFolderRequest

      @api_client.config.logger.debug 'Calling API: CadApi.create_folder ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.create_folder' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#create_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete file
    # 
    # @param request DeleteFileRequest
    # @return [nil]
    def delete_file(request)
      data, _status_code, _headers = delete_file_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Delete file
    # 
    # @param request DeleteFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def delete_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFileRequest

      @api_client.config.logger.debug 'Calling API: CadApi.delete_file ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.delete_file' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('versionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('versionId') + '}', request.version_id.to_s)
      else
        query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#delete_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete folder
    # 
    # @param request DeleteFolderRequest
    # @return [nil]
    def delete_folder(request)
      data, _status_code, _headers = delete_folder_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Delete folder
    # 
    # @param request DeleteFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def delete_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DeleteFolderRequest

      @api_client.config.logger.debug 'Calling API: CadApi.delete_folder ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.delete_folder' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('recursive')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('recursive') + '}', request.recursive.to_s)
      else
        query_params[downcase_first_letter('recursive')] = request.recursive unless request.recursive.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#delete_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Download file
    # 
    # @param request DownloadFileRequest
    # @return [File]
    def download_file(request)
      data, _status_code, _headers = download_file_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Download file
    # 
    # @param request DownloadFileRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def download_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? DownloadFileRequest

      @api_client.config.logger.debug 'Calling API: CadApi.download_file ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.download_file' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('versionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('versionId') + '}', request.version_id.to_s)
      else
        query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#download_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get Metadata info
    # 
    # @param request EditMetadataRequest
    # @return [File]
    def edit_metadata(request)
      data, _status_code, _headers = edit_metadata_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Get Metadata info
    # 
    # @param request EditMetadataRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def edit_metadata_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? EditMetadataRequest

      @api_client.config.logger.debug 'Calling API: CadApi.edit_metadata ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/cad/EditMetadata'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#edit_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Extract Metadata from CAD drawing to txt, xml or json file.
    # 
    # @param request ExtractMetadataRequest
    # @return [File]
    def extract_metadata(request)
      data, _status_code, _headers = extract_metadata_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Extract Metadata from CAD drawing to txt, xml or json file.
    # 
    # @param request ExtractMetadataRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def extract_metadata_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ExtractMetadataRequest

      @api_client.config.logger.debug 'Calling API: CadApi.extract_metadata ...' if @api_client.config.debugging
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.extract_metadata' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/ExtractMetadata'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#extract_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Extract Text from CAD drawing to txt file
    # 
    # @param request ExtractTextRequest
    # @return [File]
    def extract_text(request)
      data, _status_code, _headers = extract_text_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Extract Text from CAD drawing to txt file
    # 
    # @param request ExtractTextRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def extract_text_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ExtractTextRequest

      @api_client.config.logger.debug 'Calling API: CadApi.extract_text ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/cad/ExtractText'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#extract_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get disc usage
    # 
    # @param request GetDiscUsageRequest
    # @return [DiscUsage]
    def get_disc_usage(request)
      data, _status_code, _headers = get_disc_usage_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Get disc usage
    # 
    # @param request GetDiscUsageRequest
    # @return [Array<(DiscUsage, Fixnum, Hash)>]
    # DiscUsage data, response status code and response headers
    def get_disc_usage_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDiscUsageRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_disc_usage ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/cad/storage/disc'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'DiscUsage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_disc_usage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves info about an existing drawing.             
    # 
    # @param request GetDrawingPropertiesRequest
    # @return [CadResponse]
    def get_drawing_properties(request)
      data, _status_code, _headers = get_drawing_properties_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Retrieves info about an existing drawing.             
    # 
    # @param request GetDrawingPropertiesRequest
    # @return [Array<(CadResponse, Fixnum, Hash)>]
    # CadResponse data, response status code and response headers
    def get_drawing_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDrawingPropertiesRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_drawing_properties ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_drawing_properties' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/cad/{name}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CadResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_drawing_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resize an existing drawing.
    # 
    # @param request GetDrawingResizeRequest
    # @return [File]
    def get_drawing_resize(request)
      data, _status_code, _headers = get_drawing_resize_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Resize an existing drawing.
    # 
    # @param request GetDrawingResizeRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_drawing_resize_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDrawingResizeRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_drawing_resize ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_drawing_resize' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.get_drawing_resize' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'new_width' is set
      raise ArgumentError, 'Missing the required parameter new_width when calling CadApi.get_drawing_resize' if @api_client.config.client_side_validation && request.new_width.nil?
      # verify the required parameter 'new_height' is set
      raise ArgumentError, 'Missing the required parameter new_height when calling CadApi.get_drawing_resize' if @api_client.config.client_side_validation && request.new_height.nil?
      # resource path
      local_var_path = '/cad/{name}/resize'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format
      query_params[downcase_first_letter('newWidth')] = request.new_width
      query_params[downcase_first_letter('newHeight')] = request.new_height



      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_drawing_resize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotate/flip an existing drawing.
    # 
    # @param request GetDrawingRotateFlipRequest
    # @return [File]
    def get_drawing_rotate_flip(request)
      data, _status_code, _headers = get_drawing_rotate_flip_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Rotate/flip an existing drawing.
    # 
    # @param request GetDrawingRotateFlipRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_drawing_rotate_flip_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDrawingRotateFlipRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_drawing_rotate_flip ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_drawing_rotate_flip' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.get_drawing_rotate_flip' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'rotate_flip_type' is set
      raise ArgumentError, 'Missing the required parameter rotate_flip_type when calling CadApi.get_drawing_rotate_flip' if @api_client.config.client_side_validation && request.rotate_flip_type.nil?
      # verify enum value
      raise ArgumentError, 'invalid value for rotate_flip_type, must be one of RotateNoneFlipNone, Rotate90FlipNone, Rotate180FlipNone, Rotate270FlipNone, RotateNoneFlipX, Rotate90FlipX, Rotate180FlipX, Rotate270FlipX, RotateNoneFlipY, Rotate90FlipY, Rotate180FlipY, Rotate270FlipY, RotateNoneFlipXY, Rotate90FlipXY, Rotate180FlipXY, Rotate270FlipXY' if @api_client.config.client_side_validation && !['RotateNoneFlipNone', 'Rotate90FlipNone', 'Rotate180FlipNone', 'Rotate270FlipNone', 'RotateNoneFlipX', 'Rotate90FlipX', 'Rotate180FlipX', 'Rotate270FlipX', 'RotateNoneFlipY', 'Rotate90FlipY', 'Rotate180FlipY', 'Rotate270FlipY', 'RotateNoneFlipXY', 'Rotate90FlipXY', 'Rotate180FlipXY', 'Rotate270FlipXY'].include?(request.rotate_flip_type)
      # resource path
      local_var_path = '/cad/{name}/rotateflip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format
      query_params[downcase_first_letter('rotateFlipType')] = request.rotate_flip_type


      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_drawing_rotate_flip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to another format.
    # 
    # @param request GetDrawingSaveAsRequest
    # @return [File]
    def get_drawing_save_as(request)
      data, _status_code, _headers = get_drawing_save_as_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to another format.
    # 
    # @param request GetDrawingSaveAsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_drawing_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetDrawingSaveAsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_drawing_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_drawing_save_as' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.get_drawing_save_as' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/{name}/saveAs/{outputFormat}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)
      local_var_path = local_var_path.sub('{' + downcase_first_letter('outputFormat') + '}', request.output_format.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_drawing_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get file versions
    # 
    # @param request GetFileVersionsRequest
    # @return [FileVersions]
    def get_file_versions(request)
      data, _status_code, _headers = get_file_versions_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Get file versions
    # 
    # @param request GetFileVersionsRequest
    # @return [Array<(FileVersions, Fixnum, Hash)>]
    # FileVersions data, response status code and response headers
    def get_file_versions_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFileVersionsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_file_versions ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.get_file_versions' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/version/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FileVersions')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_file_versions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get all files and folders within a folder
    # 
    # @param request GetFilesListRequest
    # @return [FilesList]
    def get_files_list(request)
      data, _status_code, _headers = get_files_list_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Get all files and folders within a folder
    # 
    # @param request GetFilesListRequest
    # @return [Array<(FilesList, Fixnum, Hash)>]
    # FilesList data, response status code and response headers
    def get_files_list_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetFilesListRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_files_list ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.get_files_list' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/folder/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FilesList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_files_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move file
    # 
    # @param request MoveFileRequest
    # @return [nil]
    def move_file(request)
      data, _status_code, _headers = move_file_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Move file
    # 
    # @param request MoveFileRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def move_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFileRequest

      @api_client.config.logger.debug 'Calling API: CadApi.move_file ...' if @api_client.config.debugging
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling CadApi.move_file' if @api_client.config.client_side_validation && request.src_path.nil?
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling CadApi.move_file' if @api_client.config.client_side_validation && request.dest_path.nil?
      # resource path
      local_var_path = '/cad/storage/file/move/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('srcPath') + '}', request.src_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('destPath')] = request.dest_path

      if local_var_path.include? downcase_first_letter('srcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('srcStorageName') + '}', request.src_storage_name.to_s)
      else
        query_params[downcase_first_letter('srcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('destStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('destStorageName') + '}', request.dest_storage_name.to_s)
      else
        query_params[downcase_first_letter('destStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('versionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('versionId') + '}', request.version_id.to_s)
      else
        query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#move_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Move folder
    # 
    # @param request MoveFolderRequest
    # @return [nil]
    def move_folder(request)
      data, _status_code, _headers = move_folder_with_http_info(request)
      request_token if _status_code == 401
      nil
    end

    # Move folder
    # 
    # @param request MoveFolderRequest
    # @return [Array<(nil, Fixnum, Hash)>]
    # nil, response status code and response headers
    def move_folder_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? MoveFolderRequest

      @api_client.config.logger.debug 'Calling API: CadApi.move_folder ...' if @api_client.config.debugging
      # verify the required parameter 'src_path' is set
      raise ArgumentError, 'Missing the required parameter src_path when calling CadApi.move_folder' if @api_client.config.client_side_validation && request.src_path.nil?
      # verify the required parameter 'dest_path' is set
      raise ArgumentError, 'Missing the required parameter dest_path when calling CadApi.move_folder' if @api_client.config.client_side_validation && request.dest_path.nil?
      # resource path
      local_var_path = '/cad/storage/folder/move/{srcPath}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('srcPath') + '}', request.src_path.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('destPath')] = request.dest_path

      if local_var_path.include? downcase_first_letter('srcStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('srcStorageName') + '}', request.src_storage_name.to_s)
      else
        query_params[downcase_first_letter('srcStorageName')] = request.src_storage_name unless request.src_storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('destStorageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('destStorageName') + '}', request.dest_storage_name.to_s)
      else
        query_params[downcase_first_letter('destStorageName')] = request.dest_storage_name unless request.dest_storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#move_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Check if file or folder exists
    # 
    # @param request ObjectExistsRequest
    # @return [ObjectExist]
    def object_exists(request)
      data, _status_code, _headers = object_exists_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Check if file or folder exists
    # 
    # @param request ObjectExistsRequest
    # @return [Array<(ObjectExist, Fixnum, Hash)>]
    # ObjectExist data, response status code and response headers
    def object_exists_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ObjectExistsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.object_exists ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.object_exists' if @api_client.config.client_side_validation && request.path.nil?
      # resource path
      local_var_path = '/cad/storage/exist/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end
      if local_var_path.include? downcase_first_letter('versionId')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('versionId') + '}', request.version_id.to_s)
      else
        query_params[downcase_first_letter('versionId')] = request.version_id unless request.version_id.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ObjectExist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#object_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Convert bitmap image to DXF, DWG, DGN, DWF, DWFX, IFC, STL, STP, STEP, CGM, GLB, GLTF, DWT, IGES, PLT, CF2, OBJ, HPGL, IGS, PCL, FBX, SVG format.
    # 
    # @param request PaperToCadRequest
    # @return [File]
    def paper_to_cad(request)
      data, _status_code, _headers = paper_to_cad_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Convert bitmap image to DXF, DWG, DGN, DWF, DWFX, IFC, STL, STP, STEP, CGM, GLB, GLTF, DWT, IGES, PLT, CF2, OBJ, HPGL, IGS, PCL, FBX, SVG format.
    # 
    # @param request PaperToCadRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def paper_to_cad_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PaperToCadRequest

      @api_client.config.logger.debug 'Calling API: CadApi.paper_to_cad ...' if @api_client.config.debugging
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.paper_to_cad' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/paper-to-cad'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#paper_to_cad\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to BMP format with export settings specified.
    # 
    # @param request PostDrawingBmpRequest
    # @return [File]
    def post_drawing_bmp(request)
      data, _status_code, _headers = post_drawing_bmp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to BMP format with export settings specified.
    # 
    # @param request PostDrawingBmpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_bmp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingBmpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_bmp ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_bmp' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_bmp' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/bmp'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_bmp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to CGM format with export settings specified.
    # 
    # @param request PostDrawingCgmRequest
    # @return [File]
    def post_drawing_cgm(request)
      data, _status_code, _headers = post_drawing_cgm_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to CGM format with export settings specified.
    # 
    # @param request PostDrawingCgmRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_cgm_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingCgmRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_cgm ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_cgm' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_cgm' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/cgm'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_cgm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to Dicom format with export settings specified.
    # 
    # @param request PostDrawingDicomRequest
    # @return [File]
    def post_drawing_dicom(request)
      data, _status_code, _headers = post_drawing_dicom_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to Dicom format with export settings specified.
    # 
    # @param request PostDrawingDicomRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_dicom_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingDicomRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_dicom ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_dicom' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_dicom' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/dicom'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_dicom\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to Dwf format with export settings specified.
    # 
    # @param request PostDrawingDwfRequest
    # @return [File]
    def post_drawing_dwf(request)
      data, _status_code, _headers = post_drawing_dwf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to Dwf format with export settings specified.
    # 
    # @param request PostDrawingDwfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_dwf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingDwfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_dwf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_dwf' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_dwf' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/dwf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_dwf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to DXF format with export settings specified.
    # 
    # @param request PostDrawingDxfRequest
    # @return [File]
    def post_drawing_dxf(request)
      data, _status_code, _headers = post_drawing_dxf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to DXF format with export settings specified.
    # 
    # @param request PostDrawingDxfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_dxf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingDxfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_dxf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_dxf' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_dxf' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/dxf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_dxf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to Fbx format with export settings specified.
    # 
    # @param request PostDrawingFbxRequest
    # @return [File]
    def post_drawing_fbx(request)
      data, _status_code, _headers = post_drawing_fbx_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to Fbx format with export settings specified.
    # 
    # @param request PostDrawingFbxRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_fbx_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingFbxRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_fbx ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_fbx' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_fbx' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/fbx'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_fbx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into GIF format with export settings specified.
    # 
    # @param request PostDrawingGifRequest
    # @return [File]
    def post_drawing_gif(request)
      data, _status_code, _headers = post_drawing_gif_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into GIF format with export settings specified.
    # 
    # @param request PostDrawingGifRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_gif_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingGifRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_gif ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_gif' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_gif' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/gif'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to GLB format with export settings specified.
    # 
    # @param request PostDrawingGlbRequest
    # @return [File]
    def post_drawing_glb(request)
      data, _status_code, _headers = post_drawing_glb_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to GLB format with export settings specified.
    # 
    # @param request PostDrawingGlbRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_glb_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingGlbRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_glb ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_glb' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_glb' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/glb'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_glb\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to GLTF format with export settings specified.
    # 
    # @param request PostDrawingGltfRequest
    # @return [File]
    def post_drawing_gltf(request)
      data, _status_code, _headers = post_drawing_gltf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to GLTF format with export settings specified.
    # 
    # @param request PostDrawingGltfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_gltf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingGltfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_gltf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_gltf' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_gltf' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/gltf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_gltf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into JPEG format with export settings specified.
    # 
    # @param request PostDrawingJpegRequest
    # @return [File]
    def post_drawing_jpeg(request)
      data, _status_code, _headers = post_drawing_jpeg_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into JPEG format with export settings specified.
    # 
    # @param request PostDrawingJpegRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_jpeg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingJpegRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_jpeg ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_jpeg' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_jpeg' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/jpeg'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_jpeg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into JPEG2000 format with export settings specified.
    # 
    # @param request PostDrawingJpeg2000Request
    # @return [File]
    def post_drawing_jpeg2000(request)
      data, _status_code, _headers = post_drawing_jpeg2000_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into JPEG2000 format with export settings specified.
    # 
    # @param request PostDrawingJpeg2000Request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_jpeg2000_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingJpeg2000Request

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_jpeg2000 ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_jpeg2000' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_jpeg2000' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/jpeg2000'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_jpeg2000\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to Obj format with export settings specified.
    # 
    # @param request PostDrawingObjRequest
    # @return [File]
    def post_drawing_obj(request)
      data, _status_code, _headers = post_drawing_obj_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to Obj format with export settings specified.
    # 
    # @param request PostDrawingObjRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_obj_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingObjRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_obj ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_obj' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_obj' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/obj'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_obj\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to PDF format with export settings specified.
    # 
    # @param request PostDrawingPdfRequest
    # @return [File]
    def post_drawing_pdf(request)
      data, _status_code, _headers = post_drawing_pdf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to PDF format with export settings specified.
    # 
    # @param request PostDrawingPdfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_pdf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPdfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_pdf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_pdf' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_pdf' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/pdf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into PNG format with export settings specified.
    # 
    # @param request PostDrawingPngRequest
    # @return [File]
    def post_drawing_png(request)
      data, _status_code, _headers = post_drawing_png_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into PNG format with export settings specified.
    # 
    # @param request PostDrawingPngRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_png_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPngRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_png ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_png' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_png' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/png'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves info about drawing which is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingPropertiesRequest
    # @return [CadResponse]
    def post_drawing_properties(request)
      data, _status_code, _headers = post_drawing_properties_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Retrieves info about drawing which is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingPropertiesRequest
    # @return [Array<(CadResponse, Fixnum, Hash)>]
    # CadResponse data, response status code and response headers
    def post_drawing_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPropertiesRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_properties ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_drawing_properties' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/properties'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CadResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into PSD format with export settings specified.
    # 
    # @param request PostDrawingPsdRequest
    # @return [File]
    def post_drawing_psd(request)
      data, _status_code, _headers = post_drawing_psd_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into PSD format with export settings specified.
    # 
    # @param request PostDrawingPsdRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_psd_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPsdRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_psd ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_psd' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_psd' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/psd'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_psd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Resize a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingResizeRequest
    # @return [File]
    def post_drawing_resize(request)
      data, _status_code, _headers = post_drawing_resize_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Resize a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingResizeRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_resize_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingResizeRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_resize ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_drawing_resize' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.post_drawing_resize' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'new_width' is set
      raise ArgumentError, 'Missing the required parameter new_width when calling CadApi.post_drawing_resize' if @api_client.config.client_side_validation && request.new_width.nil?
      # verify the required parameter 'new_height' is set
      raise ArgumentError, 'Missing the required parameter new_height when calling CadApi.post_drawing_resize' if @api_client.config.client_side_validation && request.new_height.nil?
      # resource path
      local_var_path = '/cad/resize'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format
      query_params[downcase_first_letter('newWidth')] = request.new_width
      query_params[downcase_first_letter('newHeight')] = request.new_height



      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_resize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotate/flip a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingRotateFlipRequest
    # @return [File]
    def post_drawing_rotate_flip(request)
      data, _status_code, _headers = post_drawing_rotate_flip_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Rotate/flip a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PostDrawingRotateFlipRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_rotate_flip_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingRotateFlipRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_rotate_flip ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_drawing_rotate_flip' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.post_drawing_rotate_flip' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'rotate_flip_type' is set
      raise ArgumentError, 'Missing the required parameter rotate_flip_type when calling CadApi.post_drawing_rotate_flip' if @api_client.config.client_side_validation && request.rotate_flip_type.nil?
      # verify enum value
      raise ArgumentError, 'invalid value for rotate_flip_type, must be one of RotateNoneFlipNone, Rotate90FlipNone, Rotate180FlipNone, Rotate270FlipNone, RotateNoneFlipX, Rotate90FlipX, Rotate180FlipX, Rotate270FlipX, RotateNoneFlipY, Rotate90FlipY, Rotate180FlipY, Rotate270FlipY, RotateNoneFlipXY, Rotate90FlipXY, Rotate180FlipXY, Rotate270FlipXY' if @api_client.config.client_side_validation && !['RotateNoneFlipNone', 'Rotate90FlipNone', 'Rotate180FlipNone', 'Rotate270FlipNone', 'RotateNoneFlipX', 'Rotate90FlipX', 'Rotate180FlipX', 'Rotate270FlipX', 'RotateNoneFlipY', 'Rotate90FlipY', 'Rotate180FlipY', 'Rotate270FlipY', 'RotateNoneFlipXY', 'Rotate90FlipXY', 'Rotate180FlipXY', 'Rotate270FlipXY'].include?(request.rotate_flip_type)
      # resource path
      local_var_path = '/cad/rotateflip'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format
      query_params[downcase_first_letter('rotateFlipType')] = request.rotate_flip_type


      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_rotate_flip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export existing drawing to another format. Drawing data is passed as zero-indexed multipart/form-data content or as raw body stream.             
    # 
    # @param request PostDrawingSaveAsRequest
    # @return [File]
    def post_drawing_save_as(request)
      data, _status_code, _headers = post_drawing_save_as_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export existing drawing to another format. Drawing data is passed as zero-indexed multipart/form-data content or as raw body stream.             
    # 
    # @param request PostDrawingSaveAsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingSaveAsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_drawing_save_as' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.post_drawing_save_as' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/saveAs/{outputFormat}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('outputFormat') + '}', request.output_format.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to STP format with export settings specified.
    # 
    # @param request PostDrawingStpRequest
    # @return [File]
    def post_drawing_stp(request)
      data, _status_code, _headers = post_drawing_stp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to STP format with export settings specified.
    # 
    # @param request PostDrawingStpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_stp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingStpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_stp ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_stp' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_stp' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/stp'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_stp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to SVG format with export settings specified.
    # 
    # @param request PostDrawingSvgRequest
    # @return [File]
    def post_drawing_svg(request)
      data, _status_code, _headers = post_drawing_svg_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to SVG format with export settings specified.
    # 
    # @param request PostDrawingSvgRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_svg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingSvgRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_svg ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_svg' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_svg' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/svg'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to 3ds format with export settings specified.
    # 
    # @param request PostDrawingThreeDsRequest
    # @return [File]
    def post_drawing_three_ds(request)
      data, _status_code, _headers = post_drawing_three_ds_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to 3ds format with export settings specified.
    # 
    # @param request PostDrawingThreeDsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_three_ds_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingThreeDsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_three_ds ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_three_ds' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_three_ds' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/3ds'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_three_ds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing into TIFF format with export settings specified.
    # 
    # @param request PostDrawingTiffRequest
    # @return [File]
    def post_drawing_tiff(request)
      data, _status_code, _headers = post_drawing_tiff_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing into TIFF format with export settings specified.
    # 
    # @param request PostDrawingTiffRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_tiff_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingTiffRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_tiff ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_tiff' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_tiff' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/tiff'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to U3d format with export settings specified.
    # 
    # @param request PostDrawingU3dRequest
    # @return [File]
    def post_drawing_u3d(request)
      data, _status_code, _headers = post_drawing_u3d_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to U3d format with export settings specified.
    # 
    # @param request PostDrawingU3dRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_u3d_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingU3dRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_u3d ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_u3d' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_u3d' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/u3d'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_u3d\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to Webp format with export settings specified.
    # 
    # @param request PostDrawingWebpRequest
    # @return [File]
    def post_drawing_webp(request)
      data, _status_code, _headers = post_drawing_webp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to Webp format with export settings specified.
    # 
    # @param request PostDrawingWebpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_webp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingWebpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_webp ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_webp' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_webp' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/webp'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_webp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export an existing drawing to WMF format with export settings specified.
    # 
    # @param request PostDrawingWmfRequest
    # @return [File]
    def post_drawing_wmf(request)
      data, _status_code, _headers = post_drawing_wmf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export an existing drawing to WMF format with export settings specified.
    # 
    # @param request PostDrawingWmfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_drawing_wmf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingWmfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_wmf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_wmf' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'options' is set
      raise ArgumentError, 'Missing the required parameter options when calling CadApi.post_drawing_wmf' if @api_client.config.client_side_validation && request.options.nil?
      # resource path
      local_var_path = '/cad/{name}/wmf'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_drawing_wmf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to BMP format. Drawing data is passed as zero-indexed multipart/form-data as well as export BMP options serialized as JSON. Order of drawing data and BMP options could vary.
    # 
    # @param request PutDrawingBmpRequest
    # @return [File]
    def put_drawing_bmp(request)
      data, _status_code, _headers = put_drawing_bmp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to BMP format. Drawing data is passed as zero-indexed multipart/form-data as well as export BMP options serialized as JSON. Order of drawing data and BMP options could vary.
    # 
    # @param request PutDrawingBmpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_bmp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingBmpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_bmp ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_bmp' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/bmp'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_bmp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to CGM format. Drawing data is passed as zero-indexed multipart/form-data as well as export CGM options serialized as JSON. Order of drawing data and CGM options could vary.
    # 
    # @param request PutDrawingCgmRequest
    # @return [File]
    def put_drawing_cgm(request)
      data, _status_code, _headers = put_drawing_cgm_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to CGM format. Drawing data is passed as zero-indexed multipart/form-data as well as export CGM options serialized as JSON. Order of drawing data and CGM options could vary.
    # 
    # @param request PutDrawingCgmRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_cgm_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingCgmRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_cgm ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_cgm' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/cgm'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_cgm\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Dicom format. Drawing data is passed as zero-indexed multipart/form-data as well as export Dicom options serialized as JSON. Order of drawing data and Dicom options could vary.
    # 
    # @param request PutDrawingDicomRequest
    # @return [File]
    def put_drawing_dicom(request)
      data, _status_code, _headers = put_drawing_dicom_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Dicom format. Drawing data is passed as zero-indexed multipart/form-data as well as export Dicom options serialized as JSON. Order of drawing data and Dicom options could vary.
    # 
    # @param request PutDrawingDicomRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_dicom_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingDicomRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_dicom ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_dicom' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/dicom'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_dicom\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Dwf format. Drawing data is passed as zero-indexed multipart/form-data as well as export Dwf options serialized as JSON. Order of drawing data and Dwf options could vary.
    # 
    # @param request PutDrawingDwfRequest
    # @return [File]
    def put_drawing_dwf(request)
      data, _status_code, _headers = put_drawing_dwf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Dwf format. Drawing data is passed as zero-indexed multipart/form-data as well as export Dwf options serialized as JSON. Order of drawing data and Dwf options could vary.
    # 
    # @param request PutDrawingDwfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_dwf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingDwfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_dwf ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_dwf' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/dwf'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_dwf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to DXF format. Drawing data is passed as zero-indexed multipart/form-data as well as export DXF options serialized as JSON. Order of drawing data and DXF options could vary.
    # 
    # @param request PutDrawingDxfRequest
    # @return [File]
    def put_drawing_dxf(request)
      data, _status_code, _headers = put_drawing_dxf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to DXF format. Drawing data is passed as zero-indexed multipart/form-data as well as export DXF options serialized as JSON. Order of drawing data and DXF options could vary.
    # 
    # @param request PutDrawingDxfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_dxf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingDxfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_dxf ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_dxf' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/dxf'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_dxf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Fbx format. Drawing data is passed as zero-indexed multipart/form-data as well as export Fbx options serialized as JSON. Order of drawing data and Fbx options could vary.
    # 
    # @param request PutDrawingFbxRequest
    # @return [File]
    def put_drawing_fbx(request)
      data, _status_code, _headers = put_drawing_fbx_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Fbx format. Drawing data is passed as zero-indexed multipart/form-data as well as export Fbx options serialized as JSON. Order of drawing data and Fbx options could vary.
    # 
    # @param request PutDrawingFbxRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_fbx_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingFbxRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_fbx ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_fbx' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/fbx'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_fbx\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to GIF format. Drawing data is passed as zero-indexed multipart/form-data as well as export GIF options serialized as JSON. Order of drawing data and GIF options could vary.
    # 
    # @param request PutDrawingGifRequest
    # @return [File]
    def put_drawing_gif(request)
      data, _status_code, _headers = put_drawing_gif_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to GIF format. Drawing data is passed as zero-indexed multipart/form-data as well as export GIF options serialized as JSON. Order of drawing data and GIF options could vary.
    # 
    # @param request PutDrawingGifRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_gif_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingGifRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_gif ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_gif' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/gif'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to GLB format. Drawing data is passed as zero-indexed multipart/form-data as well as export GLB options serialized as JSON. Order of drawing data and GLB options could vary.
    # 
    # @param request PutDrawingGlbRequest
    # @return [File]
    def put_drawing_glb(request)
      data, _status_code, _headers = put_drawing_glb_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to GLB format. Drawing data is passed as zero-indexed multipart/form-data as well as export GLB options serialized as JSON. Order of drawing data and GLB options could vary.
    # 
    # @param request PutDrawingGlbRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_glb_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingGlbRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_glb ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_glb' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/glb'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_glb\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to GLTF format. Drawing data is passed as zero-indexed multipart/form-data as well as export GLTF options serialized as JSON. Order of drawing data and GLTF options could vary.
    # 
    # @param request PutDrawingGltfRequest
    # @return [File]
    def put_drawing_gltf(request)
      data, _status_code, _headers = put_drawing_gltf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to GLTF format. Drawing data is passed as zero-indexed multipart/form-data as well as export GLTF options serialized as JSON. Order of drawing data and GLTF options could vary.
    # 
    # @param request PutDrawingGltfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_gltf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingGltfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_gltf ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_gltf' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/gltf'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_gltf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to JPEG format. Drawing data is passed as zero-indexed multipart/form-data as well as export JPEG options serialized as JSON. Order of drawing data and JPEG options could vary.
    # 
    # @param request PutDrawingJpegRequest
    # @return [File]
    def put_drawing_jpeg(request)
      data, _status_code, _headers = put_drawing_jpeg_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to JPEG format. Drawing data is passed as zero-indexed multipart/form-data as well as export JPEG options serialized as JSON. Order of drawing data and JPEG options could vary.
    # 
    # @param request PutDrawingJpegRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_jpeg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingJpegRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_jpeg ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_jpeg' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/jpeg'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_jpeg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to JPEG2000 format. Drawing data is passed as zero-indexed multipart/form-data as well as export JPEG2000 options serialized as JSON. Order of drawing data and JPEG2000 options could vary.
    # 
    # @param request PutDrawingJpeg2000Request
    # @return [File]
    def put_drawing_jpeg2000(request)
      data, _status_code, _headers = put_drawing_jpeg2000_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to JPEG2000 format. Drawing data is passed as zero-indexed multipart/form-data as well as export JPEG2000 options serialized as JSON. Order of drawing data and JPEG2000 options could vary.
    # 
    # @param request PutDrawingJpeg2000Request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_jpeg2000_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingJpeg2000Request

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_jpeg2000 ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_jpeg2000' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/jpeg2000'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_jpeg2000\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Obj format. Drawing data is passed as zero-indexed multipart/form-data as well as export Obj options serialized as JSON. Order of drawing data and Obj options could vary.
    # 
    # @param request PutDrawingObjRequest
    # @return [File]
    def put_drawing_obj(request)
      data, _status_code, _headers = put_drawing_obj_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Obj format. Drawing data is passed as zero-indexed multipart/form-data as well as export Obj options serialized as JSON. Order of drawing data and Obj options could vary.
    # 
    # @param request PutDrawingObjRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_obj_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingObjRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_obj ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_obj' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/obj'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_obj\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to PDF format. Drawing data is passed as zero-indexed multipart/form-data as well as export PDF options serialized as JSON. Order of drawing data and PDF options could vary.
    # 
    # @param request PutDrawingPdfRequest
    # @return [File]
    def put_drawing_pdf(request)
      data, _status_code, _headers = put_drawing_pdf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to PDF format. Drawing data is passed as zero-indexed multipart/form-data as well as export PDF options serialized as JSON. Order of drawing data and PDF options could vary.
    # 
    # @param request PutDrawingPdfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_pdf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingPdfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_pdf ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_pdf' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/pdf'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to PNG format. Drawing data is passed as zero-indexed multipart/form-data as well as export PNG options serialized as JSON. Order of drawing data and PNG options could vary.
    # 
    # @param request PutDrawingPngRequest
    # @return [File]
    def put_drawing_png(request)
      data, _status_code, _headers = put_drawing_png_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to PNG format. Drawing data is passed as zero-indexed multipart/form-data as well as export PNG options serialized as JSON. Order of drawing data and PNG options could vary.
    # 
    # @param request PutDrawingPngRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_png_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingPngRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_png ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_png' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/png'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to PSD format. Drawing data is passed as zero-indexed multipart/form-data as well as export PSD options serialized as JSON. Order of drawing data and PSD options could vary.
    # 
    # @param request PutDrawingPsdRequest
    # @return [File]
    def put_drawing_psd(request)
      data, _status_code, _headers = put_drawing_psd_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to PSD format. Drawing data is passed as zero-indexed multipart/form-data as well as export PSD options serialized as JSON. Order of drawing data and PSD options could vary.
    # 
    # @param request PutDrawingPsdRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_psd_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingPsdRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_psd ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_psd' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/psd'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_psd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Stp format. Drawing data is passed as zero-indexed multipart/form-data as well as export Stp options serialized as JSON. Order of drawing data and Stp options could vary.
    # 
    # @param request PutDrawingStpRequest
    # @return [File]
    def put_drawing_stp(request)
      data, _status_code, _headers = put_drawing_stp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Stp format. Drawing data is passed as zero-indexed multipart/form-data as well as export Stp options serialized as JSON. Order of drawing data and Stp options could vary.
    # 
    # @param request PutDrawingStpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_stp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingStpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_stp ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_stp' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/stp'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_stp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to SVG format. Drawing data is passed as zero-indexed multipart/form-data as well as export SVG options serialized as JSON. Order of drawing data and SVG options could vary.
    # 
    # @param request PutDrawingSvgRequest
    # @return [File]
    def put_drawing_svg(request)
      data, _status_code, _headers = put_drawing_svg_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to SVG format. Drawing data is passed as zero-indexed multipart/form-data as well as export SVG options serialized as JSON. Order of drawing data and SVG options could vary.
    # 
    # @param request PutDrawingSvgRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_svg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingSvgRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_svg ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_svg' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/svg'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to 3ds format. Drawing data is passed as zero-indexed multipart/form-data as well as export 3ds options serialized as JSON. Order of drawing data and 3ds options could vary.
    # 
    # @param request PutDrawingThreeDsRequest
    # @return [File]
    def put_drawing_three_ds(request)
      data, _status_code, _headers = put_drawing_three_ds_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to 3ds format. Drawing data is passed as zero-indexed multipart/form-data as well as export 3ds options serialized as JSON. Order of drawing data and 3ds options could vary.
    # 
    # @param request PutDrawingThreeDsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_three_ds_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingThreeDsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_three_ds ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_three_ds' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/3ds'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_three_ds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to TIFF format. Drawing data is passed as zero-indexed multipart/form-data as well as export TIFF options serialized as JSON. Order of drawing data and TIFF options could vary.
    # 
    # @param request PutDrawingTiffRequest
    # @return [File]
    def put_drawing_tiff(request)
      data, _status_code, _headers = put_drawing_tiff_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to TIFF format. Drawing data is passed as zero-indexed multipart/form-data as well as export TIFF options serialized as JSON. Order of drawing data and TIFF options could vary.
    # 
    # @param request PutDrawingTiffRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_tiff_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingTiffRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_tiff ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_tiff' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/tiff'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to U3d format. Drawing data is passed as zero-indexed multipart/form-data as well as export U3d options serialized as JSON. Order of drawing data and U3d options could vary.
    # 
    # @param request PutDrawingU3dRequest
    # @return [File]
    def put_drawing_u3d(request)
      data, _status_code, _headers = put_drawing_u3d_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to U3d format. Drawing data is passed as zero-indexed multipart/form-data as well as export U3d options serialized as JSON. Order of drawing data and U3d options could vary.
    # 
    # @param request PutDrawingU3dRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_u3d_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingU3dRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_u3d ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_u3d' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/u3d'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_u3d\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to Webp format. Drawing data is passed as zero-indexed multipart/form-data as well as export Webp options serialized as JSON. Order of drawing data and Webp options could vary.
    # 
    # @param request PutDrawingWebpRequest
    # @return [File]
    def put_drawing_webp(request)
      data, _status_code, _headers = put_drawing_webp_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to Webp format. Drawing data is passed as zero-indexed multipart/form-data as well as export Webp options serialized as JSON. Order of drawing data and Webp options could vary.
    # 
    # @param request PutDrawingWebpRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_webp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingWebpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_webp ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_webp' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/webp'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_webp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export drawing to WMF format. Drawing data is passed as zero-indexed multipart/form-data as well as export WMF options serialized as JSON. Order of drawing data and WMF options could vary.
    # 
    # @param request PutDrawingWmfRequest
    # @return [File]
    def put_drawing_wmf(request)
      data, _status_code, _headers = put_drawing_wmf_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export drawing to WMF format. Drawing data is passed as zero-indexed multipart/form-data as well as export WMF options serialized as JSON. Order of drawing data and WMF options could vary.
    # 
    # @param request PutDrawingWmfRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_drawing_wmf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingWmfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_wmf ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_wmf' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # resource path
      local_var_path = '/cad/wmf'

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('outPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('outPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('exportOptions')] = request.export_options unless request.export_options.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_wmf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Save Metadata
    # 
    # @param request PutEditMetadataRequest
    # @return [File]
    def put_edit_metadata(request)
      data, _status_code, _headers = put_edit_metadata_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Save Metadata
    # 
    # @param request PutEditMetadataRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def put_edit_metadata_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutEditMetadataRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_edit_metadata ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/cad/EditMetadata'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
      form_params[downcase_first_letter('metadataComponent')] = request.metadata_component unless request.metadata_component.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_edit_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Check if storage exists
    # 
    # @param request StorageExistsRequest
    # @return [StorageExist]
    def storage_exists(request)
      data, _status_code, _headers = storage_exists_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Check if storage exists
    # 
    # @param request StorageExistsRequest
    # @return [Array<(StorageExist, Fixnum, Hash)>]
    # StorageExist data, response status code and response headers
    def storage_exists_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? StorageExistsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.storage_exists ...' if @api_client.config.debugging
      # verify the required parameter 'storage_name' is set
      raise ArgumentError, 'Missing the required parameter storage_name when calling CadApi.storage_exists' if @api_client.config.client_side_validation && request.storage_name.nil?
      # resource path
      local_var_path = '/cad/storage/{storageName}/exist'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'StorageExist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#storage_exists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Upload file
    # 
    # @param request UploadFileRequest
    # @return [FilesUploadResult]
    def upload_file(request)
      data, _status_code, _headers = upload_file_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Upload file
    # 
    # @param request UploadFileRequest
    # @return [Array<(FilesUploadResult, Fixnum, Hash)>]
    # FilesUploadResult data, response status code and response headers
    def upload_file_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? UploadFileRequest

      @api_client.config.logger.debug 'Calling API: CadApi.upload_file ...' if @api_client.config.debugging
      # verify the required parameter 'path' is set
      raise ArgumentError, 'Missing the required parameter path when calling CadApi.upload_file' if @api_client.config.client_side_validation && request.path.nil?
      # verify the required parameter 'file' is set
      raise ArgumentError, 'Missing the required parameter file when calling CadApi.upload_file' if @api_client.config.client_side_validation && request.file.nil?
      # resource path
      local_var_path = '/cad/storage/file/{path}'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('path') + '}', request.path.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('storageName')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('storageName') + '}', request.storage_name.to_s)
      else
        query_params[downcase_first_letter('storageName')] = request.storage_name unless request.storage_name.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('File')] = request.file
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'FilesUploadResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Return file for viewer
    # 
    # @param request ViewerRequest
    # @return [File]
    def viewer(request)
      data, _status_code, _headers = viewer_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Return file for viewer
    # 
    # @param request ViewerRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def viewer_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ViewerRequest

      @api_client.config.logger.debug 'Calling API: CadApi.viewer ...' if @api_client.config.debugging
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.viewer' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/Viewer'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format


      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#viewer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Add watermark to drawing
    # 
    # @param request WatermarkRequest
    # @return [File]
    def watermark(request)
      data, _status_code, _headers = watermark_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Add watermark to drawing
    # 
    # @param request WatermarkRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def watermark_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? WatermarkRequest

      @api_client.config.logger.debug 'Calling API: CadApi.watermark ...' if @api_client.config.debugging
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.watermark' if @api_client.config.client_side_validation && request.output_format.nil?
      # resource path
      local_var_path = '/cad/Watermark'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('outputFormat')] = request.output_format

      if local_var_path.include? downcase_first_letter('outputTypeExt')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('outputTypeExt') + '}', request.output_type_ext.to_s)
      else
        query_params[downcase_first_letter('outputTypeExt')] = request.output_type_ext unless request.output_type_ext.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawing')] = request.drawing unless request.drawing.nil?
      form_params[downcase_first_letter('watermarkRgb')] = request.watermark_rgb unless request.watermark_rgb.nil?
	  
      if not form_params.empty?
        header_params['Content-Type'] = 'multipart/form-data'
      end

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#watermark\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

     #
     # Helper method to convert first letter to downcase
     #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
     #
     # Gets a request token from server
     #
    private def request_token
      config = @api_client.config
      api_version = config.api_version
      config.api_version = ''
      request_url = "/connect/token"
      post_data = "grant_type=client_credentials" + "&client_id=" + config.api_key['app_sid'] + "&client_secret=" + config.api_key['api_key']
      data, status_code, header = @api_client.call_api(:POST, request_url, :body => post_data, :header_params => { "Content-Type": "application/x-www-form-urlencoded" }, :return_type => 'Object')
      @api_client.config.access_token = data[:access_token]
      @api_client.config.api_version = api_version
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
