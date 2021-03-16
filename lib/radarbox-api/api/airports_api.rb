=begin
#RadarBox On Demand API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.31

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module Radarbox
  class AirportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Airport by code
    # Get airport details by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [GetAirportResponse]
    def get_airport(icao_code, opts = {})
      data, _status_code, _headers = get_airport_with_http_info(icao_code, opts)
      data
    end

    # Airport by code
    # Get airport details by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAirportResponse, Integer, Hash)>] GetAirportResponse data, response status code and response headers
    def get_airport_with_http_info(icao_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AirportsApi.get_airport ...'
      end
      # verify the required parameter 'icao_code' is set
      if @api_client.config.client_side_validation && icao_code.nil?
        fail ArgumentError, "Missing the required parameter 'icao_code' when calling AirportsApi.get_airport"
      end
      # resource path
      local_var_path = '/airports/{icaoCode}'.sub('{' + 'icaoCode' + '}', icao_code.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetAirportResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AirportsApi#get_airport\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get METAR by airport
    # Get airport Metar by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [GetMetarResponse]
    def get_metar(icao_code, opts = {})
      data, _status_code, _headers = get_metar_with_http_info(icao_code, opts)
      data
    end

    # Get METAR by airport
    # Get airport Metar by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetMetarResponse, Integer, Hash)>] GetMetarResponse data, response status code and response headers
    def get_metar_with_http_info(icao_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AirportsApi.get_metar ...'
      end
      # verify the required parameter 'icao_code' is set
      if @api_client.config.client_side_validation && icao_code.nil?
        fail ArgumentError, "Missing the required parameter 'icao_code' when calling AirportsApi.get_metar"
      end
      # resource path
      local_var_path = '/airports/{icaoCode}/metar'.sub('{' + 'icaoCode' + '}', icao_code.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetMetarResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AirportsApi#get_metar\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get NOTAMS by airport
    # Get airport NOTAMS by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [GetNotamsResponse]
    def get_notams(icao_code, opts = {})
      data, _status_code, _headers = get_notams_with_http_info(icao_code, opts)
      data
    end

    # Get NOTAMS by airport
    # Get airport NOTAMS by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetNotamsResponse, Integer, Hash)>] GetNotamsResponse data, response status code and response headers
    def get_notams_with_http_info(icao_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AirportsApi.get_notams ...'
      end
      # verify the required parameter 'icao_code' is set
      if @api_client.config.client_side_validation && icao_code.nil?
        fail ArgumentError, "Missing the required parameter 'icao_code' when calling AirportsApi.get_notams"
      end
      # resource path
      local_var_path = '/airports/{icaoCode}/notams'.sub('{' + 'icaoCode' + '}', icao_code.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetNotamsResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AirportsApi#get_notams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get TAF by airport
    # Get airport TAF by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [GetTafResponse]
    def get_taf(icao_code, opts = {})
      data, _status_code, _headers = get_taf_with_http_info(icao_code, opts)
      data
    end

    # Get TAF by airport
    # Get airport TAF by code
    # @param icao_code ICAO code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetTafResponse, Integer, Hash)>] GetTafResponse data, response status code and response headers
    def get_taf_with_http_info(icao_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AirportsApi.get_taf ...'
      end
      # verify the required parameter 'icao_code' is set
      if @api_client.config.client_side_validation && icao_code.nil?
        fail ArgumentError, "Missing the required parameter 'icao_code' when calling AirportsApi.get_taf"
      end
      # resource path
      local_var_path = '/airports/{icaoCode}/taf'.sub('{' + 'icaoCode' + '}', icao_code.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetTafResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AirportsApi#get_taf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
