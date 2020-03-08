
require 'date'

module AsposeCadCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="VectorRasterizationOptionsDTO.rb">
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

  # Base raster export options class
  class VectorRasterizationOptionsDTO
    # Gets or sets the border X.
    attr_accessor :border_x

    # Gets or sets the border Y.
    attr_accessor :border_y

    # Gets or sets the page height.
    attr_accessor :page_height

    # Gets or sets the page width.
    attr_accessor :page_width

    # Gets or sets a background color.
    attr_accessor :background_color

    # Gets or sets a foreground color.
    attr_accessor :draw_color

    attr_accessor :unit_type

    # Gets or sets a value indicating whether content of a drawing is represented as image inside Pdf. Applicable only for CAD to Pdf export. Default is false.
    attr_accessor :content_as_bitmap

    # Gets or sets options to render bitmap inside pdf (if ContentAsBitmap is set to true).
    attr_accessor :graphics_options

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
        :'border_x' => :'BorderX',
        :'border_y' => :'BorderY',
        :'page_height' => :'PageHeight',
        :'page_width' => :'PageWidth',
        :'background_color' => :'BackgroundColor',
        :'draw_color' => :'DrawColor',
        :'unit_type' => :'UnitType',
        :'content_as_bitmap' => :'ContentAsBitmap',
        :'graphics_options' => :'GraphicsOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'border_x' => :'Float',
        :'border_y' => :'Float',
        :'page_height' => :'Float',
        :'page_width' => :'Float',
        :'background_color' => :'Color',
        :'draw_color' => :'Color',
        :'unit_type' => :'String',
        :'content_as_bitmap' => :'BOOLEAN',
        :'graphics_options' => :'GraphicsOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'BorderX')
        self.border_x = attributes[:'BorderX']
      end

      if attributes.key?(:'BorderY')
        self.border_y = attributes[:'BorderY']
      end

      if attributes.key?(:'PageHeight')
        self.page_height = attributes[:'PageHeight']
      end

      if attributes.key?(:'PageWidth')
        self.page_width = attributes[:'PageWidth']
      end

      if attributes.key?(:'BackgroundColor')
        self.background_color = attributes[:'BackgroundColor']
      end

      if attributes.key?(:'DrawColor')
        self.draw_color = attributes[:'DrawColor']
      end

      if attributes.key?(:'UnitType')
        self.unit_type = attributes[:'UnitType']
      end

      if attributes.key?(:'ContentAsBitmap')
        self.content_as_bitmap = attributes[:'ContentAsBitmap']
      end

      if attributes.key?(:'GraphicsOptions')
        self.graphics_options = attributes[:'GraphicsOptions']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @border_x.nil?
        invalid_properties.push("invalid value for 'border_x', border_x cannot be nil.")
      end

      if @border_y.nil?
        invalid_properties.push("invalid value for 'border_y', border_y cannot be nil.")
      end

      if @page_height.nil?
        invalid_properties.push("invalid value for 'page_height', page_height cannot be nil.")
      end

      if @page_width.nil?
        invalid_properties.push("invalid value for 'page_width', page_width cannot be nil.")
      end

      if @background_color.nil?
        invalid_properties.push("invalid value for 'background_color', background_color cannot be nil.")
      end

      if @draw_color.nil?
        invalid_properties.push("invalid value for 'draw_color', draw_color cannot be nil.")
      end

      if @unit_type.nil?
        invalid_properties.push("invalid value for 'unit_type', unit_type cannot be nil.")
      end

      if @content_as_bitmap.nil?
        invalid_properties.push("invalid value for 'content_as_bitmap', content_as_bitmap cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @border_x.nil?
      return false if @border_y.nil?
      return false if @page_height.nil?
      return false if @page_width.nil?
      return false if @background_color.nil?
      return false if @draw_color.nil?
      return false if @unit_type.nil?
      unit_type_validator = EnumAttributeValidator.new('String', ["Kilometer", "Meter", "Centimenter", "Millimeter", "Micrometer", "Nanometer", "Angstrom", "Decimeter", "Decameter", "Hectometer", "Gigameter", "AstronomicalUnit", "LightYear", "Parsec", "Mile", "Yard", "Foot", "Inch", "Mil", "MicroInch", "Custom", "Unitless"])
      return false unless unit_type_validator.valid?(@unit_type)
      return false if @content_as_bitmap.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_type Object to be assigned
    def unit_type=(unit_type)
      validator = EnumAttributeValidator.new('String', ["Kilometer", "Meter", "Centimenter", "Millimeter", "Micrometer", "Nanometer", "Angstrom", "Decimeter", "Decameter", "Hectometer", "Gigameter", "AstronomicalUnit", "LightYear", "Parsec", "Mile", "Yard", "Foot", "Inch", "Mil", "MicroInch", "Custom", "Unitless"])
      if unit_type.to_i == 0
        unless validator.valid?(unit_type)
          raise ArgumentError, "invalid value for 'unit_type', must be one of #{validator.allowable_values}."
        end
        @unit_type = unit_type
      else
        @unit_type = validator.allowable_values[unit_type.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          border_x == other.border_x &&
          border_y == other.border_y &&
          page_height == other.page_height &&
          page_width == other.page_width &&
          background_color == other.background_color &&
          draw_color == other.draw_color &&
          unit_type == other.unit_type &&
          content_as_bitmap == other.content_as_bitmap &&
          graphics_options == other.graphics_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [border_x, border_y, page_height, page_width, background_color, draw_color, unit_type, content_as_bitmap, graphics_options].hash
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
