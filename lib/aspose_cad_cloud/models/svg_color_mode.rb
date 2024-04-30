
require 'date'

module AsposeCadCloud

  class SvgColorMode
    
    GRAYSCALE = "Grayscale".freeze
    Y_CB_CR = "YCbCr".freeze
    CMYK = "Cmyk".freeze
    YCCK = "Ycck".freeze
    RGB = "Rgb".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SvgColorMode.constants.select{|c| SvgColorMode::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #SvgColorMode" if constantValues.empty?
      value
    end
  end

end
