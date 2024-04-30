
require 'date'

module AsposeCadCloud

  class ColorModes
    
    BITMAP = "Bitmap".freeze
    GRAYSCALE = "Grayscale".freeze
    INDEXED = "Indexed".freeze
    RGB = "Rgb".freeze
    CMYK = "Cmyk".freeze
    MULTICHANNEL = "Multichannel".freeze
    DUOTONE = "Duotone".freeze
    LAB = "Lab".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ColorModes.constants.select{|c| ColorModes::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #ColorModes" if constantValues.empty?
      value
    end
  end

end
