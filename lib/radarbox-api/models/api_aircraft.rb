=begin
#RadarBox On Demand API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module Radarbox
  class ApiAircraft
    attr_accessor :mode_s

    attr_accessor :registration

    attr_accessor :type_icao

    attr_accessor :type_iata

    attr_accessor :type_description

    attr_accessor :class_description

    attr_accessor :company_icao

    attr_accessor :company_iata

    attr_accessor :company_name

    attr_accessor :first_flight

    attr_accessor :serial_number

    attr_accessor :photos

    attr_accessor :aircraft_statitics

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mode_s' => :'modeS',
        :'registration' => :'registration',
        :'type_icao' => :'typeIcao',
        :'type_iata' => :'typeIata',
        :'type_description' => :'typeDescription',
        :'class_description' => :'classDescription',
        :'company_icao' => :'companyIcao',
        :'company_iata' => :'companyIata',
        :'company_name' => :'companyName',
        :'first_flight' => :'firstFlight',
        :'serial_number' => :'serialNumber',
        :'photos' => :'photos',
        :'aircraft_statitics' => :'aircraftStatitics'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'mode_s' => :'Object',
        :'registration' => :'Object',
        :'type_icao' => :'Object',
        :'type_iata' => :'Object',
        :'type_description' => :'Object',
        :'class_description' => :'Object',
        :'company_icao' => :'Object',
        :'company_iata' => :'Object',
        :'company_name' => :'Object',
        :'first_flight' => :'Object',
        :'serial_number' => :'Object',
        :'photos' => :'Object',
        :'aircraft_statitics' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Radarbox::ApiAircraft` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Radarbox::ApiAircraft`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'mode_s')
        self.mode_s = attributes[:'mode_s']
      end

      if attributes.key?(:'registration')
        self.registration = attributes[:'registration']
      end

      if attributes.key?(:'type_icao')
        self.type_icao = attributes[:'type_icao']
      end

      if attributes.key?(:'type_iata')
        self.type_iata = attributes[:'type_iata']
      end

      if attributes.key?(:'type_description')
        self.type_description = attributes[:'type_description']
      end

      if attributes.key?(:'class_description')
        self.class_description = attributes[:'class_description']
      end

      if attributes.key?(:'company_icao')
        self.company_icao = attributes[:'company_icao']
      end

      if attributes.key?(:'company_iata')
        self.company_iata = attributes[:'company_iata']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'first_flight')
        self.first_flight = attributes[:'first_flight']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'photos')
        if (value = attributes[:'photos']).is_a?(Array)
          self.photos = value
        end
      end

      if attributes.key?(:'aircraft_statitics')
        if (value = attributes[:'aircraft_statitics']).is_a?(Array)
          self.aircraft_statitics = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mode_s == o.mode_s &&
          registration == o.registration &&
          type_icao == o.type_icao &&
          type_iata == o.type_iata &&
          type_description == o.type_description &&
          class_description == o.class_description &&
          company_icao == o.company_icao &&
          company_iata == o.company_iata &&
          company_name == o.company_name &&
          first_flight == o.first_flight &&
          serial_number == o.serial_number &&
          photos == o.photos &&
          aircraft_statitics == o.aircraft_statitics
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [mode_s, registration, type_icao, type_iata, type_description, class_description, company_icao, company_iata, company_name, first_flight, serial_number, photos, aircraft_statitics].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
      else # model
        Radarbox.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
    end  end
end
