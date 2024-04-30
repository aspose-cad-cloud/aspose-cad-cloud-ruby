
require 'date'

module AsposeCadCloud

  class TiffCompressions
    
    NONE = "None".freeze
    CCITT_RLE = "CcittRle".freeze
    CCITT_FAX3 = "CcittFax3".freeze
    CCITT_FAX4 = "CcittFax4".freeze
    LZW = "Lzw".freeze
    OJPEG = "Ojpeg".freeze
    JPEG = "Jpeg".freeze
    ADOBE_DEFLATE = "AdobeDeflate".freeze
    NEXT = "Next".freeze
    CCITT_RLE_W = "CcittRleW".freeze
    PACKBITS = "Packbits".freeze
    THUNDERSCAN = "Thunderscan".freeze
    IT8_CTPAD = "It8Ctpad".freeze
    IT8_LW = "It8Lw".freeze
    IT8_MP = "It8Mp".freeze
    IT8_BL = "It8Bl".freeze
    PIXAR_FILM = "PixarFilm".freeze
    PIXAR_LOG = "PixarLog".freeze
    DEFLATE = "Deflate".freeze
    DCS = "Dcs".freeze
    JBIG = "Jbig".freeze
    SGILOG = "Sgilog".freeze
    SGILOG24 = "Sgilog24".freeze
    JP2000 = "Jp2000".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TiffCompressions.constants.select{|c| TiffCompressions::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TiffCompressions" if constantValues.empty?
      value
    end
  end

end
