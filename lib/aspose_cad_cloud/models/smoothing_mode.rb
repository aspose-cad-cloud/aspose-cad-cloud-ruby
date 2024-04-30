
require 'date'

module AsposeCadCloud

  class SmoothingMode
    
    DEFAULT = "Default".freeze
    HIGH_SPEED = "HighSpeed".freeze
    HIGH_QUALITY = "HighQuality".freeze
    NONE = "None".freeze
    ANTI_ALIAS = "AntiAlias".freeze
    INVALID = "Invalid".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SmoothingMode.constants.select{|c| SmoothingMode::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #SmoothingMode" if constantValues.empty?
      value
    end
  end

end
