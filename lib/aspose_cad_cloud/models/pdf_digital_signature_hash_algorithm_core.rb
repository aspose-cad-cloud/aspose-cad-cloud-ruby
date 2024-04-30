
require 'date'

module AsposeCadCloud

  class PdfDigitalSignatureHashAlgorithmCore
    
    SHA1 = "Sha1".freeze
    SHA256 = "Sha256".freeze
    SHA384 = "Sha384".freeze
    SHA512 = "Sha512".freeze
    MD5 = "Md5".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PdfDigitalSignatureHashAlgorithmCore.constants.select{|c| PdfDigitalSignatureHashAlgorithmCore::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #PdfDigitalSignatureHashAlgorithmCore" if constantValues.empty?
      value
    end
  end

end
