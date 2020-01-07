
require 'date'

module AsposeCadCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="BmpOptionsDTO.rb">
 #   Copyright (c) 2017 Aspose.Cad for Cloud
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

  # Export options for BMP format
  class BmpOptionsDTO
    # Resulting rotation operation
    attr_accessor :rotation

    # Layers to export
    attr_accessor :layers

    # DPI resolution settings
    attr_accessor :resolution_settings

    # Raster options
    attr_accessor :vector_rasterization_options

    # Bits per pixel
    attr_accessor :bits_per_pixel

    # Compression type
    attr_accessor :compression

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rotation' => :'Rotation',
        :'layers' => :'Layers',
        :'resolution_settings' => :'ResolutionSettings',
        :'vector_rasterization_options' => :'VectorRasterizationOptions',
        :'bits_per_pixel' => :'BitsPerPixel',
        :'compression' => :'Compression'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'rotation' => :'String',
        :'layers' => :'Array<String>',
        :'resolution_settings' => :'ResolutionSetting',
        :'vector_rasterization_options' => :'CadRasterizationOptionsDTO',
        :'bits_per_pixel' => :'Integer',
        :'compression' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Rotation')
        self.rotation = attributes[:'Rotation']
      end

      if attributes.key?(:'Layers')
        if (value = attributes[:'Layers']).is_a?(Array)
          self.layers = value
        end
      end

      if attributes.key?(:'ResolutionSettings')
        self.resolution_settings = attributes[:'ResolutionSettings']
      end

      if attributes.key?(:'VectorRasterizationOptions')
        self.vector_rasterization_options = attributes[:'VectorRasterizationOptions']
      end

      if attributes.key?(:'BitsPerPixel')
        self.bits_per_pixel = attributes[:'BitsPerPixel']
      end

      if attributes.key?(:'Compression')
        self.compression = attributes[:'Compression']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @rotation.nil?
        invalid_properties.push("invalid value for 'rotation', rotation cannot be nil.")
      end

      if @bits_per_pixel.nil?
        invalid_properties.push("invalid value for 'bits_per_pixel', bits_per_pixel cannot be nil.")
      end

      if @compression.nil?
        invalid_properties.push("invalid value for 'compression', compression cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rotation.nil?
      rotation_validator = EnumAttributeValidator.new('String', ["RotateNoneFlipNone", "Rotate90FlipNone", "Rotate180FlipNone", "Rotate270FlipNone", "RotateNoneFlipX", "Rotate90FlipX", "Rotate180FlipX", "Rotate270FlipX", "RotateNoneFlipY", "Rotate90FlipY", "Rotate180FlipY", "Rotate270FlipY", "RotateNoneFlipXY", "Rotate90FlipXY", "Rotate180FlipXY", "Rotate270FlipXY"])
      return false unless rotation_validator.valid?(@rotation)
      return false if @bits_per_pixel.nil?
      return false if @compression.nil?
      compression_validator = EnumAttributeValidator.new('String', ["Rgb", "Rle8", "Rle4", "Bitfields", "Jpeg", "Png", "AlphaBitfields"])
      return false unless compression_validator.valid?(@compression)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rotation Object to be assigned
    def rotation=(rotation)
      validator = EnumAttributeValidator.new('String', ["RotateNoneFlipNone", "Rotate90FlipNone", "Rotate180FlipNone", "Rotate270FlipNone", "RotateNoneFlipX", "Rotate90FlipX", "Rotate180FlipX", "Rotate270FlipX", "RotateNoneFlipY", "Rotate90FlipY", "Rotate180FlipY", "Rotate270FlipY", "RotateNoneFlipXY", "Rotate90FlipXY", "Rotate180FlipXY", "Rotate270FlipXY"])
      if rotation.to_i == 0
        unless validator.valid?(rotation)
          raise ArgumentError, "invalid value for 'rotation', must be one of #{validator.allowable_values}."
        end
        @rotation = rotation
      else
        @rotation = validator.allowable_values[rotation.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compression Object to be assigned
    def compression=(compression)
      validator = EnumAttributeValidator.new('String', ["Rgb", "Rle8", "Rle4", "Bitfields", "Jpeg", "Png", "AlphaBitfields"])
      if compression.to_i == 0
        unless validator.valid?(compression)
          raise ArgumentError, "invalid value for 'compression', must be one of #{validator.allowable_values}."
        end
        @compression = compression
      else
        @compression = validator.allowable_values[compression.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          rotation == other.rotation &&
          layers == other.layers &&
          resolution_settings == other.resolution_settings &&
          vector_rasterization_options == other.vector_rasterization_options &&
          bits_per_pixel == other.bits_per_pixel &&
          compression == other.compression
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [rotation, layers, resolution_settings, vector_rasterization_options, bits_per_pixel, compression].hash
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
