
require 'date'

module AsposeCadCloud

  class TiffPhotometrics
    
    MIN_IS_WHITE = "MinIsWhite".freeze
    MIN_IS_BLACK = "MinIsBlack".freeze
    RGB = "Rgb".freeze
    PALETTE = "Palette".freeze
    MASK = "Mask".freeze
    SEPARATED = "Separated".freeze
    YCBCR = "Ycbcr".freeze
    CIELAB = "Cielab".freeze
    ICCLAB = "Icclab".freeze
    ITULAB = "Itulab".freeze
    LOGL = "Logl".freeze
    LOGLUV = "Logluv".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TiffPhotometrics.constants.select{|c| TiffPhotometrics::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TiffPhotometrics" if constantValues.empty?
      value
    end
  end

end
