
require 'date'

module AsposeCadCloud

  class CompressionMethod
    
    RAW = "Raw".freeze
    RLE = "RLE".freeze
    ZIP_WITHOUT_PREDICTION = "ZipWithoutPrediction".freeze
    ZIP_WITH_PREDICTION = "ZipWithPrediction".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CompressionMethod.constants.select{|c| CompressionMethod::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #CompressionMethod" if constantValues.empty?
      value
    end
  end

end
