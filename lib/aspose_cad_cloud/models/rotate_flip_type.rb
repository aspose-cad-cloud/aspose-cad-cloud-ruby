
require 'date'

module AsposeCadCloud

  class RotateFlipType
    
    ROTATE_NONE_FLIP_NONE = "RotateNoneFlipNone".freeze
    ROTATE90_FLIP_NONE = "Rotate90FlipNone".freeze
    ROTATE180_FLIP_NONE = "Rotate180FlipNone".freeze
    ROTATE270_FLIP_NONE = "Rotate270FlipNone".freeze
    ROTATE_NONE_FLIP_X = "RotateNoneFlipX".freeze
    ROTATE90_FLIP_X = "Rotate90FlipX".freeze
    ROTATE180_FLIP_X = "Rotate180FlipX".freeze
    ROTATE270_FLIP_X = "Rotate270FlipX".freeze
    ROTATE_NONE_FLIP_Y = "RotateNoneFlipY".freeze
    ROTATE90_FLIP_Y = "Rotate90FlipY".freeze
    ROTATE180_FLIP_Y = "Rotate180FlipY".freeze
    ROTATE270_FLIP_Y = "Rotate270FlipY".freeze
    ROTATE_NONE_FLIP_XY = "RotateNoneFlipXY".freeze
    ROTATE90_FLIP_XY = "Rotate90FlipXY".freeze
    ROTATE180_FLIP_XY = "Rotate180FlipXY".freeze
    ROTATE270_FLIP_XY = "Rotate270FlipXY".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RotateFlipType.constants.select{|c| RotateFlipType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #RotateFlipType" if constantValues.empty?
      value
    end
  end

end
