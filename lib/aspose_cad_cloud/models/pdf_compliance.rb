
require 'date'

module AsposeCadCloud

  class PdfCompliance
    
    PDF15 = "Pdf15".freeze
    PDF_A1A = "PdfA1a".freeze
    PDF_A1B = "PdfA1b".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PdfCompliance.constants.select{|c| PdfCompliance::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #PdfCompliance" if constantValues.empty?
      value
    end
  end

end
