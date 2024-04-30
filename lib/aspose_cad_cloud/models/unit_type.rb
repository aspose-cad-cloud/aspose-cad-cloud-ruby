
require 'date'

module AsposeCadCloud

  class UnitType
    
    KILOMETER = "Kilometer".freeze
    METER = "Meter".freeze
    CENTIMENTER = "Centimenter".freeze
    MILLIMETER = "Millimeter".freeze
    MICROMETER = "Micrometer".freeze
    NANOMETER = "Nanometer".freeze
    ANGSTROM = "Angstrom".freeze
    DECIMETER = "Decimeter".freeze
    DECAMETER = "Decameter".freeze
    HECTOMETER = "Hectometer".freeze
    GIGAMETER = "Gigameter".freeze
    ASTRONOMICAL_UNIT = "AstronomicalUnit".freeze
    LIGHT_YEAR = "LightYear".freeze
    PARSEC = "Parsec".freeze
    MILE = "Mile".freeze
    YARD = "Yard".freeze
    FOOT = "Foot".freeze
    INCH = "Inch".freeze
    MIL = "Mil".freeze
    MICRO_INCH = "MicroInch".freeze
    CUSTOM = "Custom".freeze
    UNITLESS = "Unitless".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = UnitType.constants.select{|c| UnitType::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #UnitType" if constantValues.empty?
      value
    end
  end

end
