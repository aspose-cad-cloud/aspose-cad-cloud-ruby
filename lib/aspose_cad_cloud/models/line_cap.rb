
require 'date'

module AsposeCadCloud

  class LineCap
    
    FLAT = "Flat".freeze
    SQUARE = "Square".freeze
    ROUND = "Round".freeze
    TRIANGLE = "Triangle".freeze
    NO_ANCHOR = "NoAnchor".freeze
    SQUARE_ANCHOR = "SquareAnchor".freeze
    ROUND_ANCHOR = "RoundAnchor".freeze
    DIAMOND_ANCHOR = "DiamondAnchor".freeze
    ARROW_ANCHOR = "ArrowAnchor".freeze
    ANCHOR_MASK = "AnchorMask".freeze
    CUSTOM = "Custom".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LineCap.constants.select{|c| LineCap::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #LineCap" if constantValues.empty?
      value
    end
  end

end
