
require 'date'

module AsposeCadCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="Color.rb">
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


  class Color
    attr_accessor :r

    attr_accessor :g

    attr_accessor :b

    attr_accessor :a

    attr_accessor :is_known_color

    attr_accessor :is_empty

    attr_accessor :is_named_color

    attr_accessor :name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'r' => :'R',
        :'g' => :'G',
        :'b' => :'B',
        :'a' => :'A',
        :'is_known_color' => :'IsKnownColor',
        :'is_empty' => :'IsEmpty',
        :'is_named_color' => :'IsNamedColor',
        :'name' => :'Name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'r' => :'Integer',
        :'g' => :'Integer',
        :'b' => :'Integer',
        :'a' => :'Integer',
        :'is_known_color' => :'BOOLEAN',
        :'is_empty' => :'BOOLEAN',
        :'is_named_color' => :'BOOLEAN',
        :'name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'R')
        self.r = attributes[:'R']
      end

      if attributes.key?(:'G')
        self.g = attributes[:'G']
      end

      if attributes.key?(:'B')
        self.b = attributes[:'B']
      end

      if attributes.key?(:'A')
        self.a = attributes[:'A']
      end

      if attributes.key?(:'IsKnownColor')
        self.is_known_color = attributes[:'IsKnownColor']
      end

      if attributes.key?(:'IsEmpty')
        self.is_empty = attributes[:'IsEmpty']
      end

      if attributes.key?(:'IsNamedColor')
        self.is_named_color = attributes[:'IsNamedColor']
      end

      if attributes.key?(:'Name')
        self.name = attributes[:'Name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @r.nil?
        invalid_properties.push("invalid value for 'r', r cannot be nil.")
      end

      if @g.nil?
        invalid_properties.push("invalid value for 'g', g cannot be nil.")
      end

      if @b.nil?
        invalid_properties.push("invalid value for 'b', b cannot be nil.")
      end

      if @a.nil?
        invalid_properties.push("invalid value for 'a', a cannot be nil.")
      end

      if @is_known_color.nil?
        invalid_properties.push("invalid value for 'is_known_color', is_known_color cannot be nil.")
      end

      if @is_empty.nil?
        invalid_properties.push("invalid value for 'is_empty', is_empty cannot be nil.")
      end

      if @is_named_color.nil?
        invalid_properties.push("invalid value for 'is_named_color', is_named_color cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @r.nil?
      return false if @g.nil?
      return false if @b.nil?
      return false if @a.nil?
      return false if @is_known_color.nil?
      return false if @is_empty.nil?
      return false if @is_named_color.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          r == other.r &&
          g == other.g &&
          b == other.b &&
          a == other.a &&
          is_known_color == other.is_known_color &&
          is_empty == other.is_empty &&
          is_named_color == other.is_named_color &&
          name == other.name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [r, g, b, a, is_known_color, is_empty, is_named_color, name].hash
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
