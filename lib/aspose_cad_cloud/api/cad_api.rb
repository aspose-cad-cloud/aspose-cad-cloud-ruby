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
    private def get_drawing_properties_with_http_info(request)
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

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def get_drawing_resize_with_http_info(request)
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
    private def get_drawing_rotate_flip_with_http_info(request)
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
    private def get_drawing_save_as_with_http_info(request)
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
        CadApi#get_drawing_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_bmp_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingBmpRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_bmp ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_bmp' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_bmp\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_gif_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingGifRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_gif ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_gif' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_gif\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_jpeg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingJpegRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_jpeg ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_jpeg' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
    private def post_drawing_jpeg2000_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingJpeg2000Request

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_jpeg2000 ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_jpeg2000' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_jpeg2000\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_pdf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPdfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_pdf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_pdf' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
    private def post_drawing_png_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPngRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_png ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_png' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_png\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_psd_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingPsdRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_psd ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_psd' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_psd\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_svg_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingSvgRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_svg ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_svg' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_svg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_tiff_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingTiffRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_tiff ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_tiff' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
        CadApi#post_drawing_tiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def post_drawing_wmf_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostDrawingWmfRequest

      @api_client.config.logger.debug 'Calling API: CadApi.post_drawing_wmf ...' if @api_client.config.debugging
      # verify the required parameter 'name' is set
      raise ArgumentError, 'Missing the required parameter name when calling CadApi.post_drawing_wmf' if @api_client.config.client_side_validation && request.name.nil?
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

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)
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
    private def put_drawing_bmp_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_gif_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_jpeg_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_jpeg2000_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_pdf_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_png_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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

    # Retrieves info about drawing which is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingPropertiesRequest
    # @return [CadResponse]
    def put_drawing_properties(request)
      data, _status_code, _headers = put_drawing_properties_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Retrieves info about drawing which is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingPropertiesRequest
    # @return [Array<(CadResponse, Fixnum, Hash)>]
    # CadResponse data, response status code and response headers
    private def put_drawing_properties_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingPropertiesRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_properties ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_properties' if @api_client.config.client_side_validation && request.drawing_data.nil?
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

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'CadResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def put_drawing_psd_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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

    # Resize a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingResizeRequest
    # @return [File]
    def put_drawing_resize(request)
      data, _status_code, _headers = put_drawing_resize_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Resize a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingResizeRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_drawing_resize_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingResizeRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_resize ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_resize' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.put_drawing_resize' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'new_width' is set
      raise ArgumentError, 'Missing the required parameter new_width when calling CadApi.put_drawing_resize' if @api_client.config.client_side_validation && request.new_width.nil?
      # verify the required parameter 'new_height' is set
      raise ArgumentError, 'Missing the required parameter new_height when calling CadApi.put_drawing_resize' if @api_client.config.client_side_validation && request.new_height.nil?
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_resize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Rotate/flip a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingRotateFlipRequest
    # @return [File]
    def put_drawing_rotate_flip(request)
      data, _status_code, _headers = put_drawing_rotate_flip_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Rotate/flip a drawing. Drawing data is passed as a zero-indexed multipart/form-data content or as raw body stream.
    # 
    # @param request PutDrawingRotateFlipRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_drawing_rotate_flip_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingRotateFlipRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_rotate_flip ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_rotate_flip' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.put_drawing_rotate_flip' if @api_client.config.client_side_validation && request.output_format.nil?
      # verify the required parameter 'rotate_flip_type' is set
      raise ArgumentError, 'Missing the required parameter rotate_flip_type when calling CadApi.put_drawing_rotate_flip' if @api_client.config.client_side_validation && request.rotate_flip_type.nil?
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_rotate_flip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Export existing drawing to another format. Drawing data is passed as zero-indexed multipart/form-data content or as raw body stream.             
    # 
    # @param request PutDrawingSaveAsRequest
    # @return [File]
    def put_drawing_save_as(request)
      data, _status_code, _headers = put_drawing_save_as_with_http_info(request)
      request_token if _status_code == 401
      data
    end

    # Export existing drawing to another format. Drawing data is passed as zero-indexed multipart/form-data content or as raw body stream.             
    # 
    # @param request PutDrawingSaveAsRequest
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    private def put_drawing_save_as_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutDrawingSaveAsRequest

      @api_client.config.logger.debug 'Calling API: CadApi.put_drawing_save_as ...' if @api_client.config.debugging
      # verify the required parameter 'drawing_data' is set
      raise ArgumentError, 'Missing the required parameter drawing_data when calling CadApi.put_drawing_save_as' if @api_client.config.client_side_validation && request.drawing_data.nil?
      # verify the required parameter 'output_format' is set
      raise ArgumentError, 'Missing the required parameter output_format when calling CadApi.put_drawing_save_as' if @api_client.config.client_side_validation && request.output_format.nil?
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/octet-stream'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        auth_names: auth_names,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CadApi#put_drawing_save_as\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    private def put_drawing_svg_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_tiff_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
    private def put_drawing_wmf_with_http_info(request)
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params[downcase_first_letter('drawingData')] = request.drawing_data
      form_params[downcase_first_letter('options')] = request.options unless request.options.nil?

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
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
      @api_client.config.access_token = data[:access_token]
      @api_client.config.api_version = api_version
      @api_client.config.refresh_token = data[:refresh_token]
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
