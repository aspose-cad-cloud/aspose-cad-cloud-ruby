
require 'date'

module AsposeCadCloud

  class CadDrawTypeMode
    
    USE_DRAW_COLOR = "UseDrawColor".freeze
    USE_OBJECT_COLOR = "UseObjectColor".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CadDrawTypeMode.constants.select{|c| CadDrawTypeMode::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #CadDrawTypeMode" if constantValues.empty?
      value
    end
  end

end
