=begin
#RadarBox On Demand API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module Radarbox
  class FlightsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get live flights 
    # Use this endpoint if your goal is to get real time information for live flights, either if you are looking for a specific geographical location or particular aircraft/airline/airport.
    # @param [Hash] opts the optional parameters
    # @option opts [RtAircraftPositionQuery] :body 
    # @option opts [String] :authorization 
    # @return [FlightsResponse]
    def aircraft_position(opts = {})
      data, _status_code, _headers = aircraft_position_with_http_info(opts)
      data
    end

    # Get live flights 
    # Use this endpoint if your goal is to get real time information for live flights, either if you are looking for a specific geographical location or particular aircraft/airline/airport.
    # @param [Hash] opts the optional parameters
    # @option opts [RtAircraftPositionQuery] :body 
    # @option opts [String] :authorization 
    # @return [Array<(FlightsResponse, Integer, Hash)>] FlightsResponse data, response status code and response headers
    def aircraft_position_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlightsApi.aircraft_position ...'
      end
      # resource path
      local_var_path = '/flights/live'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'FlightsResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlightsApi#aircraft_position\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Search flights by geographical area
    # Use this endpoint if you are interested in knowing which flights have flown over a particular geographical area at a given point in time
    # @param [Hash] opts the optional parameters
    # @option opts [GeoSearchQuery] :body 
    # @option opts [String] :authorization 
    # @option opts [Integer] :page Request page
    # @option opts [Integer] :page_size Page size
    # @return [FlightsResponse]
    def geosearch(opts = {})
      data, _status_code, _headers = geosearch_with_http_info(opts)
      data
    end

    # Search flights by geographical area
    # Use this endpoint if you are interested in knowing which flights have flown over a particular geographical area at a given point in time
    # @param [Hash] opts the optional parameters
    # @option opts [GeoSearchQuery] :body 
    # @option opts [String] :authorization 
    # @option opts [Integer] :page Request page
    # @option opts [Integer] :page_size Page size
    # @return [Array<(FlightsResponse, Integer, Hash)>] FlightsResponse data, response status code and response headers
    def geosearch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlightsApi.geosearch ...'
      end
      # resource path
      local_var_path = '/flights/geosearch'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'FlightsResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlightsApi#geosearch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Search flights
    # Use this endpoint for general flight searches - past, present or future (scheduled) - based on departure/arrival location or individual flights and tail numbers. The search always needs to be restricted by date (either departure, arrival or both).
    # @param [Hash] opts the optional parameters
    # @option opts [FlightsQuery] :body 
    # @option opts [String] :authorization 
    # @option opts [Integer] :page Request page
    # @option opts [Integer] :page_size Page size
    # @return [FlightsResponse]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Search flights
    # Use this endpoint for general flight searches - past, present or future (scheduled) - based on departure/arrival location or individual flights and tail numbers. The search always needs to be restricted by date (either departure, arrival or both).
    # @param [Hash] opts the optional parameters
    # @option opts [FlightsQuery] :body 
    # @option opts [String] :authorization 
    # @option opts [Integer] :page Request page
    # @option opts [Integer] :page_size Page size
    # @return [Array<(FlightsResponse, Integer, Hash)>] FlightsResponse data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FlightsApi.search ...'
      end
      # resource path
      local_var_path = '/flights/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'FlightsResponse' 

      auth_names = opts[:auth_names] || ['bearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FlightsApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
