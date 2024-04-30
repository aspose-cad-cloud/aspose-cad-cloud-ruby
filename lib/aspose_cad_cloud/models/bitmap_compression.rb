
require 'date'

module AsposeCadCloud

  class BitmapCompression
    
    RGB = "Rgb".freeze
    RLE8 = "Rle8".freeze
    RLE4 = "Rle4".freeze
    BITFIELDS = "Bitfields".freeze
    JPEG = "Jpeg".freeze
    PNG = "Png".freeze
    ALPHA_BITFIELDS = "AlphaBitfields".freeze
    DXT1 = "Dxt1".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = BitmapCompression.constants.select{|c| BitmapCompression::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #BitmapCompression" if constantValues.empty?
      value
    end
  end

end
