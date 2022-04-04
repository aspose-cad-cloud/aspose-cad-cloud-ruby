
require 'date'

module AsposeCadCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="X509Certificate2.rb">
 #   Copyright (c) 2017 Aspose.CAD Cloud
 # </copyright>
 # <summary>
 #   Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 #
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 #
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #


  class X509Certificate2
    attr_accessor :handle

    attr_accessor :issuer

    attr_accessor :subject

    attr_accessor :archived

    attr_accessor :extensions

    attr_accessor :friendly_name

    attr_accessor :has_private_key

    attr_accessor :private_key

    attr_accessor :issuer_name

    attr_accessor :not_after

    attr_accessor :not_before

    attr_accessor :public_key

    attr_accessor :raw_data

    attr_accessor :serial_number

    attr_accessor :signature_algorithm

    attr_accessor :subject_name

    attr_accessor :thumbprint

    attr_accessor :version


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'handle' => :'Handle',
        :'issuer' => :'Issuer',
        :'subject' => :'Subject',
        :'archived' => :'Archived',
        :'extensions' => :'Extensions',
        :'friendly_name' => :'FriendlyName',
        :'has_private_key' => :'HasPrivateKey',
        :'private_key' => :'PrivateKey',
        :'issuer_name' => :'IssuerName',
        :'not_after' => :'NotAfter',
        :'not_before' => :'NotBefore',
        :'public_key' => :'PublicKey',
        :'raw_data' => :'RawData',
        :'serial_number' => :'SerialNumber',
        :'signature_algorithm' => :'SignatureAlgorithm',
        :'subject_name' => :'SubjectName',
        :'thumbprint' => :'Thumbprint',
        :'version' => :'Version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'handle' => :'IntPtr',
        :'issuer' => :'String',
        :'subject' => :'String',
        :'archived' => :'BOOLEAN',
        :'extensions' => :'Array<null>',
        :'friendly_name' => :'String',
        :'has_private_key' => :'BOOLEAN',
        :'private_key' => :'AsymmetricAlgorithm',
        :'issuer_name' => :'X500DistinguishedName',
        :'not_after' => :'DateTime',
        :'not_before' => :'DateTime',
        :'public_key' => :'PublicKey',
        :'raw_data' => :'String',
        :'serial_number' => :'String',
        :'signature_algorithm' => :'Oid',
        :'subject_name' => :'X500DistinguishedName',
        :'thumbprint' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Handle')
        self.handle = attributes[:'Handle']
      end

      if attributes.key?(:'Issuer')
        self.issuer = attributes[:'Issuer']
      end

      if attributes.key?(:'Subject')
        self.subject = attributes[:'Subject']
      end

      if attributes.key?(:'Archived')
        self.archived = attributes[:'Archived']
      end

      if attributes.key?(:'Extensions')
        if (value = attributes[:'Extensions']).is_a?(Array)
          self.extensions = value
        end
      end

      if attributes.key?(:'FriendlyName')
        self.friendly_name = attributes[:'FriendlyName']
      end

      if attributes.key?(:'HasPrivateKey')
        self.has_private_key = attributes[:'HasPrivateKey']
      end

      if attributes.key?(:'PrivateKey')
        self.private_key = attributes[:'PrivateKey']
      end

      if attributes.key?(:'IssuerName')
        self.issuer_name = attributes[:'IssuerName']
      end

      if attributes.key?(:'NotAfter')
        self.not_after = attributes[:'NotAfter']
      end

      if attributes.key?(:'NotBefore')
        self.not_before = attributes[:'NotBefore']
      end

      if attributes.key?(:'PublicKey')
        self.public_key = attributes[:'PublicKey']
      end

      if attributes.key?(:'RawData')
        self.raw_data = attributes[:'RawData']
      end

      if attributes.key?(:'SerialNumber')
        self.serial_number = attributes[:'SerialNumber']
      end

      if attributes.key?(:'SignatureAlgorithm')
        self.signature_algorithm = attributes[:'SignatureAlgorithm']
      end

      if attributes.key?(:'SubjectName')
        self.subject_name = attributes[:'SubjectName']
      end

      if attributes.key?(:'Thumbprint')
        self.thumbprint = attributes[:'Thumbprint']
      end

      if attributes.key?(:'Version')
        self.version = attributes[:'Version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if @archived.nil?
        invalid_properties.push("invalid value for 'archived', archived cannot be nil.")
      end

      if @has_private_key.nil?
        invalid_properties.push("invalid value for 'has_private_key', has_private_key cannot be nil.")
      end

      if @not_after.nil?
        invalid_properties.push("invalid value for 'not_after', not_after cannot be nil.")
      end

      if @not_before.nil?
        invalid_properties.push("invalid value for 'not_before', not_before cannot be nil.")
      end

      if !@raw_data.nil? && @raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        invalid_properties.push("invalid value for 'raw_data', must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/.")
      end

      if @version.nil?
        invalid_properties.push("invalid value for 'version', version cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @handle.nil?
      return false if @archived.nil?
      return false if @has_private_key.nil?
      return false if @not_after.nil?
      return false if @not_before.nil?
      return false if !@raw_data.nil? && @raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @version.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] raw_data Value to be assigned
    def raw_data=(raw_data)

      if !raw_data.nil? && raw_data !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
        raise ArgumentError, "invalid value for 'raw_data', must conform to the pattern /^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/."
      end

      @raw_data = raw_data
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          handle == other.handle &&
          issuer == other.issuer &&
          subject == other.subject &&
          archived == other.archived &&
          extensions == other.extensions &&
          friendly_name == other.friendly_name &&
          has_private_key == other.has_private_key &&
          private_key == other.private_key &&
          issuer_name == other.issuer_name &&
          not_after == other.not_after &&
          not_before == other.not_before &&
          public_key == other.public_key &&
          raw_data == other.raw_data &&
          serial_number == other.serial_number &&
          signature_algorithm == other.signature_algorithm &&
          subject_name == other.subject_name &&
          thumbprint == other.thumbprint &&
          version == other.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [handle, issuer, subject, archived, extensions, friendly_name, has_private_key, private_key, issuer_name, not_after, not_before, public_key, raw_data, serial_number, signature_algorithm, subject_name, thumbprint, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = AsposeCadCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
