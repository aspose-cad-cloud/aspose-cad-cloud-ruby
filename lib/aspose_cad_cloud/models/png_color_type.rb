
require 'date'

module AsposeCadCloud

  class PngColorType
    
    GRAYSCALE = "Grayscale".freeze
    TRUECOLOR = "Truecolor".freeze
    INDEXED_COLOR = "IndexedColor".freeze
    GRAYSCALE_WITH_ALPHA = "GrayscaleWithAlpha".freeze
    TRUECOLOR_WITH_ALPHA = "TruecolorWithAlpha".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PngColorType.constants.select{|c| PngColorType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #PngColorType" if constantValues.empty?
      value
    end
  end

end
