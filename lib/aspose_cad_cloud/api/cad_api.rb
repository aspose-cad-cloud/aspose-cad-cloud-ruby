# -----------------------------------------------------------------------------------
# <copyright company="Aspose" file="cad_api.rb">
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
# -----------------------------------------------------------------------------------

require 'uri'

module AsposeCadCloud
  #
  # Aspose.Cad for Cloud API
  #
  class CadApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      require_all '../models/requests'
      request_token
    end

    # Change scale of an existing image
    # 
    # @param request GetChangeImageScaleRequest
    # @return [File]
    def get_change_image_scale(request)
      data, _status_code, _headers = get_change_image_scale_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Change scale of an existing image
    # 
    # @param request GetChangeImageScaleRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_change_image_scale_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetChangeImageScaleRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_change_image_scale ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_change_image_scale' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.get_change_image_scale' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'new_width' is set
      raise ArgumentError, 'Missing the required parameter new_width when calling CadApi.get_change_image_scale' if @api_client.config.client_side_validation && request.new_width.nil?
      # verify the required parameter 'new_height' is set
      raise ArgumentError, 'Missing the required parameter new_height when calling CadApi.get_change_image_scale' if @api_client.config.client_side_validation && request.new_height.nil?
      # resource path
      local_var_path = '/cad/{name}/resize'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('NewWidth')] = request.new_width
      query_params[downcase_first_letter('NewHeight')] = request.new_height



      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_change_image_scale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Get properties of an image.
    # 
    # @param request GetImagePropertiesRequest
    # @return [ImagePropertiesResponse]
    def get_image_properties(request)
      data, _status_code, _headers = get_image_properties_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Get properties of an image.
    # 
    # @param request GetImagePropertiesRequest
    # @return [Array<(ImagePropertiesResponse, Fixnum, Hash)>]
    # ImagePropertiesResponse data, response status code and response headers
    def get_image_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetImagePropertiesRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_image_properties ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_image_properties' if @api_client.config.client_side_validation && request.name.nil?
      # resource path
      local_var_path = '/cad/{name}/properties'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'ImagePropertiesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_image_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotate and flip existing image
    # 
    # @param request GetImageRotateFlipRequest
    # @return [File]
    def get_image_rotate_flip(request)
      data, _status_code, _headers = get_image_rotate_flip_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Rotate and flip existing image
    # 
    # @param request GetImageRotateFlipRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_image_rotate_flip_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetImageRotateFlipRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_image_rotate_flip ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_image_rotate_flip' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.get_image_rotate_flip' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'method' is set
      raise ArgumentError, 'Missing the required parameter method when calling CadApi.get_image_rotate_flip' if @api_client.config.client_side_validation && request.method.nil?
      # resource path
      local_var_path = '/cad/{name}/rotateflip'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Method')] = request.method


      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_image_rotate_flip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export existing drawing to another format
    # 
    # @param request GetImageSaveAsRequest
    # @return [File]
    def get_image_save_as(request)
      data, _status_code, _headers = get_image_save_as_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export existing drawing to another format
    # 
    # @param request GetImageSaveAsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def get_image_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? GetImageSaveAsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.get_image_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.get_image_save_as' if @api_client.config.client_side_validation && request.name.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.get_image_save_as' if @api_client.config.client_side_validation && request.format.nil?
      # resource path
      local_var_path = '/cad/{name}/saveAs'
      local_var_path = local_var_path.sub('{' + downcase_first_letter('Name') + '}', request.name.to_s)

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('Folder')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Folder') + '}', request.folder.to_s)
      else
        query_params[downcase_first_letter('Folder')] = request.folder unless request.folder.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end
      if local_var_path.include? downcase_first_letter('RasterOptions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RasterOptions') + '}', request.raster_options.to_s)
      else
        query_params[downcase_first_letter('RasterOptions')] = request.raster_options unless request.raster_options.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/xml', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#get_image_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Change scale of an image from body
    # 
    # @param request PostChangeImageScaleRequest
    # @return [File]
    def post_change_image_scale(request)
      data, _status_code, _headers = post_change_image_scale_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Change scale of an image from body
    # 
    # @param request PostChangeImageScaleRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_change_image_scale_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostChangeImageScaleRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_change_image_scale ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_change_image_scale' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.post_change_image_scale' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'new_width' is set
      raise ArgumentError, 'Missing the required parameter new_width when calling CadApi.post_change_image_scale' if @api_client.config.client_side_validation && request.new_width.nil?
      # verify the required parameter 'new_height' is set
      raise ArgumentError, 'Missing the required parameter new_height when calling CadApi.post_change_image_scale' if @api_client.config.client_side_validation && request.new_height.nil?
      # resource path
      local_var_path = '/cad/resize'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('NewWidth')] = request.new_width
      query_params[downcase_first_letter('NewHeight')] = request.new_height



      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_change_image_scale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotate and flip existing image and get it from response.
    # 
    # @param request PostImageRotateFlipRequest
    # @return [File]
    def post_image_rotate_flip(request)
      data, _status_code, _headers = post_image_rotate_flip_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Rotate and flip existing image and get it from response.
    # 
    # @param request PostImageRotateFlipRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_image_rotate_flip_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostImageRotateFlipRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_image_rotate_flip ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_image_rotate_flip' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.post_image_rotate_flip' if @api_client.config.client_side_validation && request.format.nil?
      # verify the required parameter 'method' is set
      raise ArgumentError, 'Missing the required parameter method when calling CadApi.post_image_rotate_flip' if @api_client.config.client_side_validation && request.method.nil?
      # resource path
      local_var_path = '/cad/rotateflip'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format
      query_params[downcase_first_letter('Method')] = request.method


      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_image_rotate_flip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export existing image to another format. Image is passed as request body.
    # 
    # @param request PostImageSaveAsRequest
    # @return [File]
    def post_image_save_as(request)
      data, _status_code, _headers = post_image_save_as_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export existing image to another format. Image is passed as request body.
    # 
    # @param request PostImageSaveAsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def post_image_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostImageSaveAsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_image_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.post_image_save_as' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'format' is set
      raise ArgumentError, 'Missing the required parameter format when calling CadApi.post_image_save_as' if @api_client.config.client_side_validation && request.format.nil?
      # resource path
      local_var_path = '/cad/saveAs'

      # query parameters
      query_params = {}
      query_params[downcase_first_letter('Format')] = request.format

      if local_var_path.include? downcase_first_letter('RasterOptions')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('RasterOptions') + '}', request.raster_options.to_s)
      else
        query_params[downcase_first_letter('RasterOptions')] = request.raster_options unless request.raster_options.nil?
      end
      if local_var_path.include? downcase_first_letter('OutPath')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end
      if local_var_path.include? downcase_first_letter('Storage')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('Storage') + '}', request.storage.to_s)
      else
        query_params[downcase_first_letter('Storage')] = request.storage unless request.storage.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('DrawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#post_image_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      request_url = "/oauth2/token"
      post_data = "grant_type=client_credentials" + "&client_id=" + config.api_key['app_sid'] + "&client_secret=" + config.api_key['api_key']
      data, status_code, header = @api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
      @api_client.config.access_token = data#[:access_token]
      @api_client.config.api_version = api_version
      @api_client.config.refresh_token = data#[:refresh_token]
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
