# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="aspose_cad_cloud.rb">
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
# ------------------------------------------------------------------------------------

# Common files
require_relative 'aspose_cad_cloud/api_client'
require_relative 'aspose_cad_cloud/api_error'
require_relative 'aspose_cad_cloud/version'
require_relative 'aspose_cad_cloud/configuration'

# Models
require_relative 'aspose_cad_cloud/models/bitmap_compression'
require_relative 'aspose_cad_cloud/models/cad_draw_type_mode'
require_relative 'aspose_cad_cloud/models/cad_response'
require_relative 'aspose_cad_cloud/models/cf2_properties'
require_relative 'aspose_cad_cloud/models/color'
require_relative 'aspose_cad_cloud/models/color_modes'
require_relative 'aspose_cad_cloud/models/compression_method'
require_relative 'aspose_cad_cloud/models/dgn_properties'
require_relative 'aspose_cad_cloud/models/disc_usage'
require_relative 'aspose_cad_cloud/models/drawing_options_base_dto'
require_relative 'aspose_cad_cloud/models/dwf_properties'
require_relative 'aspose_cad_cloud/models/dwg_properties'
require_relative 'aspose_cad_cloud/models/dxf_properties'
require_relative 'aspose_cad_cloud/models/error_details'
require_relative 'aspose_cad_cloud/models/error_model'
require_relative 'aspose_cad_cloud/models/fbx_properties'
require_relative 'aspose_cad_cloud/models/file_versions'
require_relative 'aspose_cad_cloud/models/files_list'
require_relative 'aspose_cad_cloud/models/files_upload_result'
require_relative 'aspose_cad_cloud/models/graphics_options'
require_relative 'aspose_cad_cloud/models/ifc_properties'
require_relative 'aspose_cad_cloud/models/igs_properties'
require_relative 'aspose_cad_cloud/models/interpolation_mode'
require_relative 'aspose_cad_cloud/models/jpeg2000_codec'
require_relative 'aspose_cad_cloud/models/jpeg_compression_color_mode'
require_relative 'aspose_cad_cloud/models/jpeg_compression_mode'
require_relative 'aspose_cad_cloud/models/line_cap'
require_relative 'aspose_cad_cloud/models/obj_properties'
require_relative 'aspose_cad_cloud/models/object_exist'
require_relative 'aspose_cad_cloud/models/pdf_compliance'
require_relative 'aspose_cad_cloud/models/pdf_digital_signature_details_core_dto'
require_relative 'aspose_cad_cloud/models/pdf_digital_signature_hash_algorithm_core'
require_relative 'aspose_cad_cloud/models/pdf_document_info'
require_relative 'aspose_cad_cloud/models/pdf_document_options_dto'
require_relative 'aspose_cad_cloud/models/pen_options'
require_relative 'aspose_cad_cloud/models/plt_properties'
require_relative 'aspose_cad_cloud/models/png_color_type'
require_relative 'aspose_cad_cloud/models/png_filter_type'
require_relative 'aspose_cad_cloud/models/rd_optimizer_settings'
require_relative 'aspose_cad_cloud/models/resolution_setting'
require_relative 'aspose_cad_cloud/models/rotate_flip_type'
require_relative 'aspose_cad_cloud/models/smoothing_mode'
require_relative 'aspose_cad_cloud/models/stl_properties'
require_relative 'aspose_cad_cloud/models/storage_exist'
require_relative 'aspose_cad_cloud/models/storage_file'
require_relative 'aspose_cad_cloud/models/stp_properties'
require_relative 'aspose_cad_cloud/models/svg_color_mode'
require_relative 'aspose_cad_cloud/models/text_rendering_hint'
require_relative 'aspose_cad_cloud/models/tiff_byte_order'
require_relative 'aspose_cad_cloud/models/tiff_compressions'
require_relative 'aspose_cad_cloud/models/tiff_expected_format'
require_relative 'aspose_cad_cloud/models/tiff_photometrics'
require_relative 'aspose_cad_cloud/models/unit_type'
require_relative 'aspose_cad_cloud/models/vector_rasterization_options_dto'
require_relative 'aspose_cad_cloud/models/bmp_options_dto'
require_relative 'aspose_cad_cloud/models/cad_rasterization_options_dto'
require_relative 'aspose_cad_cloud/models/cgm_options_dto'
require_relative 'aspose_cad_cloud/models/dicom_options_dto'
require_relative 'aspose_cad_cloud/models/dwf_options_dto'
require_relative 'aspose_cad_cloud/models/dxf_options_dto'
require_relative 'aspose_cad_cloud/models/fbx_options_dto'
require_relative 'aspose_cad_cloud/models/file_version'
require_relative 'aspose_cad_cloud/models/gif_options_dto'
require_relative 'aspose_cad_cloud/models/glb_options_dto'
require_relative 'aspose_cad_cloud/models/gltf_options_dto'
require_relative 'aspose_cad_cloud/models/jpeg2000_options_dto'
require_relative 'aspose_cad_cloud/models/jpeg_options_dto'
require_relative 'aspose_cad_cloud/models/obj_options_dto'
require_relative 'aspose_cad_cloud/models/pdf_options_dto'
require_relative 'aspose_cad_cloud/models/png_options_dto'
require_relative 'aspose_cad_cloud/models/psd_options_dto'
require_relative 'aspose_cad_cloud/models/stp_options_dto'
require_relative 'aspose_cad_cloud/models/svg_options_dto'
require_relative 'aspose_cad_cloud/models/three_ds_options_dto'
require_relative 'aspose_cad_cloud/models/tiff_options_dto'
require_relative 'aspose_cad_cloud/models/u3d_options_dto'
require_relative 'aspose_cad_cloud/models/webp_options_dto'
require_relative 'aspose_cad_cloud/models/wmf_options_dto'

# APIs
require_relative 'aspose_cad_cloud/api/cad_api'

module AsposeCadCloud
  # Main module
  class << self
    # Configure sdk using block.
    # AsposeCadCloud.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.default
      else
        Configuration.default
      end
    end
  end
end
