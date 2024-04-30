
require 'date'

module AsposeCadCloud

  class InterpolationMode
    
    DEFAULT = "Default".freeze
    LOW = "Low".freeze
    HIGH = "High".freeze
    BILINEAR = "Bilinear".freeze
    BICUBIC = "Bicubic".freeze
    NEAREST_NEIGHBOR = "NearestNeighbor".freeze
    HIGH_QUALITY_BILINEAR = "HighQualityBilinear".freeze
    HIGH_QUALITY_BICUBIC = "HighQualityBicubic".freeze
    INVALID = "Invalid".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = InterpolationMode.constants.select{|c| InterpolationMode::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #InterpolationMode" if constantValues.empty?
      value
    end
  end

end
