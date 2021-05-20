=begin
#RadarBox On Demand API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module Radarbox
  class ApiAirport
    attr_accessor :icao_code

    attr_accessor :iata_code

    attr_accessor :name

    attr_accessor :city

    attr_accessor :state

    attr_accessor :main_airport

    attr_accessor :country

    attr_accessor :elevation

    attr_accessor :coordinates

    attr_accessor :runways

    attr_accessor :time_zone

    attr_accessor :takeoff_active_runways

    attr_accessor :landing_active_runways

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'icao_code' => :'icaoCode',
        :'iata_code' => :'iataCode',
        :'name' => :'name',
        :'city' => :'city',
        :'state' => :'state',
        :'main_airport' => :'mainAirport',
        :'country' => :'country',
        :'elevation' => :'elevation',
        :'coordinates' => :'coordinates',
        :'runways' => :'runways',
        :'time_zone' => :'timeZone',
        :'takeoff_active_runways' => :'takeoffActiveRunways',
        :'landing_active_runways' => :'landingActiveRunways'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'icao_code' => :'Object',
        :'iata_code' => :'Object',
        :'name' => :'Object',
        :'city' => :'Object',
        :'state' => :'Object',
        :'main_airport' => :'Object',
        :'country' => :'Object',
        :'elevation' => :'Object',
        :'coordinates' => :'Object',
        :'runways' => :'Object',
        :'time_zone' => :'Object',
        :'takeoff_active_runways' => :'Object',
        :'landing_active_runways' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Radarbox::ApiAirport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Radarbox::ApiAirport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'icao_code')
        self.icao_code = attributes[:'icao_code']
      end

      if attributes.key?(:'iata_code')
        self.iata_code = attributes[:'iata_code']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'main_airport')
        self.main_airport = attributes[:'main_airport']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'elevation')
        self.elevation = attributes[:'elevation']
      end

      if attributes.key?(:'coordinates')
        self.coordinates = attributes[:'coordinates']
      end

      if attributes.key?(:'runways')
        if (value = attributes[:'runways']).is_a?(Array)
          self.runways = value
        end
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'takeoff_active_runways')
        if (value = attributes[:'takeoff_active_runways']).is_a?(Array)
          self.takeoff_active_runways = value
        end
      end

      if attributes.key?(:'landing_active_runways')
        if (value = attributes[:'landing_active_runways']).is_a?(Array)
          self.landing_active_runways = value
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
          icao_code == o.icao_code &&
          iata_code == o.iata_code &&
          name == o.name &&
          city == o.city &&
          state == o.state &&
          main_airport == o.main_airport &&
          country == o.country &&
          elevation == o.elevation &&
          coordinates == o.coordinates &&
          runways == o.runways &&
          time_zone == o.time_zone &&
          takeoff_active_runways == o.takeoff_active_runways &&
          landing_active_runways == o.landing_active_runways
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [icao_code, iata_code, name, city, state, main_airport, country, elevation, coordinates, runways, time_zone, takeoff_active_runways, landing_active_runways].hash
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
