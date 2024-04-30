
require 'date'

module AsposeCadCloud

  class TextRenderingHint
    
    SYSTEM_DEFAULT = "SystemDefault".freeze
    SINGLE_BIT_PER_PIXEL_GRID_FIT = "SingleBitPerPixelGridFit".freeze
    SINGLE_BIT_PER_PIXEL = "SingleBitPerPixel".freeze
    ANTI_ALIAS_GRID_FIT = "AntiAliasGridFit".freeze
    ANTI_ALIAS = "AntiAlias".freeze
    CLEAR_TYPE_GRID_FIT = "ClearTypeGridFit".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TextRenderingHint.constants.select{|c| TextRenderingHint::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TextRenderingHint" if constantValues.empty?
      value
    end
  end

end
