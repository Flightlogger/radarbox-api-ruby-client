=begin
#RadarBox On Demand API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.31

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'spec_helper'
require 'json'

# Unit tests for Radarbox::FlightsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FlightsApi' do
  before do
    # run before each test
    @instance = Radarbox::FlightsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlightsApi' do
    it 'should create an instance of FlightsApi' do
      expect(@instance).to be_instance_of(Radarbox::FlightsApi)
    end
  end

  # unit tests for aircraft_position
  # Get live flights 
  # Use this endpoint if your goal is to get real time information for live flights, either if you are looking for a specific geographical location or particular aircraft/airline/airport.
  # @param [Hash] opts the optional parameters
  # @option opts [RtAircraftPositionQuery] :body 
  # @option opts [String] :authorization 
  # @return [FlightsResponse]
  describe 'aircraft_position test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for geosearch
  # Search flights by geographical area
  # Use this endpoint if you are interested in knowing which flights have flown over a particular geographical area at a given point in time
  # @param [Hash] opts the optional parameters
  # @option opts [GeoSearchQuery] :body 
  # @option opts [String] :authorization 
  # @return [FlightsResponse]
  describe 'geosearch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Search flights
  # Use this endpoint for general flight searches - past, present or future (scheduled) - based on departure/arrival location or individual flights and tail numbers. The search always needs to be restricted by date (either departure, arrival or both).
  # @param [Hash] opts the optional parameters
  # @option opts [FlightsQuery] :body 
  # @option opts [String] :authorization 
  # @return [FlightsResponse]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
