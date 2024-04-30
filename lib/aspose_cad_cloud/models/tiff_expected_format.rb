
require 'date'

module AsposeCadCloud

  class TiffExpectedFormat
    
    DEFAULT = "Default".freeze
    TIFF_LZW_BW = "TiffLzwBw".freeze
    TIFF_LZW_RGB = "TiffLzwRgb".freeze
    TIFF_LZW_RGBA = "TiffLzwRgba".freeze
    TIFF_LZW_CMYK = "TiffLzwCmyk".freeze
    TIFF_CCITT_FAX3 = "TiffCcittFax3".freeze
    TIFF_CCITT_FAX4 = "TiffCcittFax4".freeze
    TIFF_DEFLATE_BW = "TiffDeflateBw".freeze
    TIFF_DEFLATE_RGB = "TiffDeflateRgb".freeze
    TIFF_DEFLATE_RGBA = "TiffDeflateRgba".freeze
    TIFF_CCIT_RLE = "TiffCcitRle".freeze
    TIFF_JPEG_RGB = "TiffJpegRgb".freeze
    TIFF_JPEG_Y_CB_CR = "TiffJpegYCbCr".freeze
    TIFF_NO_COMPRESSION_BW = "TiffNoCompressionBw".freeze
    TIFF_NO_COMPRESSION_RGB = "TiffNoCompressionRgb".freeze
    TIFF_NO_COMPRESSION_RGBA = "TiffNoCompressionRgba".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TiffExpectedFormat.constants.select{|c| TiffExpectedFormat::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TiffExpectedFormat" if constantValues.empty?
      value
    end
  end

end
