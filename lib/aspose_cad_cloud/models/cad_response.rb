
require 'date'

module AsposeCadCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="CadResponse.rb">
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

  # Represents information about a drawing.
  class CadResponse
    # Gets or sets the height of a drawing.
    attr_accessor :height

    # Gets or sets the width of a drawing.
    attr_accessor :width

    # Gets or sets the DWG properties.
    attr_accessor :dwg_properties

    # Gets or sets the DXF properties.
    attr_accessor :dxf_properties

    # Gets or sets the DWT properties.
    attr_accessor :dwt_properties

    # Gets or sets the DGN properties.
    attr_accessor :dgn_properties

    # Gets or sets the IFC properties.
    attr_accessor :ifc_properties

    # Gets or sets the IGS properties.
    attr_accessor :igs_properties

    # Gets or sets the STL properties.
    attr_accessor :stl_properties

    # Gets or sets the DWF properties.
    attr_accessor :dwf_properties

    # Gets or sets the CFF2 properties.
    attr_accessor :cff2_properties


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'height' => :'Height',
        :'width' => :'Width',
        :'dwg_properties' => :'DwgProperties',
        :'dxf_properties' => :'DxfProperties',
        :'dwt_properties' => :'DwtProperties',
        :'dgn_properties' => :'DgnProperties',
        :'ifc_properties' => :'IfcProperties',
        :'igs_properties' => :'IgsProperties',
        :'stl_properties' => :'StlProperties',
        :'dwf_properties' => :'DwfProperties',
        :'cff2_properties' => :'Cff2Properties'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'dwg_properties' => :'DwgProperties',
        :'dxf_properties' => :'DxfProperties',
        :'dwt_properties' => :'DwgProperties',
        :'dgn_properties' => :'DgnProperties',
        :'ifc_properties' => :'IfcProperties',
        :'igs_properties' => :'IgsProperties',
        :'stl_properties' => :'StlProperties',
        :'dwf_properties' => :'DwfProperties',
        :'cff2_properties' => :'Cff2Properties'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.key?(:'DwgProperties')
        self.dwg_properties = attributes[:'DwgProperties']
      end

      if attributes.key?(:'DxfProperties')
        self.dxf_properties = attributes[:'DxfProperties']
      end

      if attributes.key?(:'DwtProperties')
        self.dwt_properties = attributes[:'DwtProperties']
      end

      if attributes.key?(:'DgnProperties')
        self.dgn_properties = attributes[:'DgnProperties']
      end

      if attributes.key?(:'IfcProperties')
        self.ifc_properties = attributes[:'IfcProperties']
      end

      if attributes.key?(:'IgsProperties')
        self.igs_properties = attributes[:'IgsProperties']
      end

      if attributes.key?(:'StlProperties')
        self.stl_properties = attributes[:'StlProperties']
      end

      if attributes.key?(:'DwfProperties')
        self.dwf_properties = attributes[:'DwfProperties']
      end

      if attributes.key?(:'Cff2Properties')
        self.cff2_properties = attributes[:'Cff2Properties']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @height.nil?
        invalid_properties.push("invalid value for 'height', height cannot be nil.")
      end

      if @width.nil?
        invalid_properties.push("invalid value for 'width', width cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @height.nil?
      return false if @width.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          height == other.height &&
          width == other.width &&
          dwg_properties == other.dwg_properties &&
          dxf_properties == other.dxf_properties &&
          dwt_properties == other.dwt_properties &&
          dgn_properties == other.dgn_properties &&
          ifc_properties == other.ifc_properties &&
          igs_properties == other.igs_properties &&
          stl_properties == other.stl_properties &&
          dwf_properties == other.dwf_properties &&
          cff2_properties == other.cff2_properties
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [height, width, dwg_properties, dxf_properties, dwt_properties, dgn_properties, ifc_properties, igs_properties, stl_properties, dwf_properties, cff2_properties].hash
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
