
require 'date'

module AsposeCadCloud

  class TiffByteOrder
    
    LITTLE_ENDIAN = "LittleEndian".freeze
    BIG_ENDIAN = "BigEndian".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TiffByteOrder.constants.select{|c| TiffByteOrder::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #TiffByteOrder" if constantValues.empty?
      value
    end
  end

end
