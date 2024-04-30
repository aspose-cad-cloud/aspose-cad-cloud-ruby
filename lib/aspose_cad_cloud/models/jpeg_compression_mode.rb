
require 'date'

module AsposeCadCloud

  class JpegCompressionMode
    
    BASELINE = "Baseline".freeze
    PROGRESSIVE = "Progressive".freeze
    LOSSLESS = "Lossless".freeze
    JPEG_LS = "JpegLs".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = JpegCompressionMode.constants.select{|c| JpegCompressionMode::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #JpegCompressionMode" if constantValues.empty?
      value
    end
  end

end
