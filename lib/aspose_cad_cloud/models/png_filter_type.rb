
require 'date'

module AsposeCadCloud

  class PngFilterType
    
    NONE = "None".freeze
    SUB = "Sub".freeze
    UP = "Up".freeze
    AVG = "Avg".freeze
    PAETH = "Paeth".freeze
    ADAPTIVE = "Adaptive".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PngFilterType.constants.select{|c| PngFilterType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #PngFilterType" if constantValues.empty?
      value
    end
  end

end
