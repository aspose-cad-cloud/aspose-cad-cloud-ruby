
require 'date'

module AsposeCadCloud

  class Jpeg2000Codec
    
    J2_K = "J2K".freeze
    JP2 = "Jp2".freeze
    JPT = "Jpt".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Jpeg2000Codec.constants.select{|c| Jpeg2000Codec::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #Jpeg2000Codec" if constantValues.empty?
      value
    end
  end

end
