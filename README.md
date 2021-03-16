# radarbox-api

Radarbox - the Ruby gem for the RadarBox On Demand API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0.30-SNAPSHOT
- Package version: 1.0.1
- Build package: io.swagger.codegen.v3.generators.ruby.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build radarbox-api.gemspec
```

Then either install the gem locally:

```shell
gem install ./radarbox-api-1.0.1.gem
```
(for development, run `gem install --dev ./radarbox-api-1.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'radarbox-api', '~> 1.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'radarbox-api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'radarbox-api'
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AircraftApi.new
opts = { 
  mode_s: 'mode_s_example', # String | Mode-S code
  registration: 'registration_example' # String | Registration
}

begin
  #Aircraft by id
  result = api_instance.get_aircraft(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AircraftApi->get_aircraft: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirportsApi.new
icao_code = 'icao_code_example' # String | ICAO code


begin
  #Airport by code
  result = api_instance.get_airport(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->get_airport: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirportsApi.new
icao_code = 'icao_code_example' # String | ICAO code


begin
  #Get METAR by airport
  result = api_instance.get_metar(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->get_metar: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirportsApi.new
icao_code = 'icao_code_example' # String | ICAO code


begin
  #Get NOTAMS by airport
  result = api_instance.get_notams(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->get_notams: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirportsApi.new
icao_code = 'icao_code_example' # String | ICAO code


begin
  #Get TAF by airport
  result = api_instance.get_taf(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->get_taf: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::RtAircraftPositionQuery.new, # RtAircraftPositionQuery | 
  authorization: 'authorization_example' # String | 
}

begin
  #Get live flights 
  result = api_instance.aircraft_position(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->aircraft_position: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::GeoSearchQuery.new, # GeoSearchQuery | 
  authorization: 'authorization_example' # String | 
}

begin
  #Search flights by geographical area
  result = api_instance.geosearch(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->geosearch: #{e}"
end
# Setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::FlightsQuery.new, # FlightsQuery | 
  authorization: 'authorization_example' # String | 
}

begin
  #Search flights
  result = api_instance.search(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->search: #{e}"
end
```

## Documentation for API Endpoints

All URIs are relative to *https://api.radarbox.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Radarbox::AircraftApi* | [**get_aircraft**](docs/AircraftApi.md#get_aircraft) | **GET** /aircraft | Aircraft by id
*Radarbox::AirportsApi* | [**get_airport**](docs/AirportsApi.md#get_airport) | **GET** /airports/{icaoCode} | Airport by code
*Radarbox::AirportsApi* | [**get_metar**](docs/AirportsApi.md#get_metar) | **GET** /airports/{icaoCode}/metar | Get METAR by airport
*Radarbox::AirportsApi* | [**get_notams**](docs/AirportsApi.md#get_notams) | **GET** /airports/{icaoCode}/notams | Get NOTAMS by airport
*Radarbox::AirportsApi* | [**get_taf**](docs/AirportsApi.md#get_taf) | **GET** /airports/{icaoCode}/taf | Get TAF by airport
*Radarbox::FlightsApi* | [**aircraft_position**](docs/FlightsApi.md#aircraft_position) | **POST** /flights/live | Get live flights 
*Radarbox::FlightsApi* | [**geosearch**](docs/FlightsApi.md#geosearch) | **POST** /flights/geosearch | Search flights by geographical area
*Radarbox::FlightsApi* | [**search**](docs/FlightsApi.md#search) | **POST** /flights/search | Search flights

## Documentation for Models

 - [Radarbox::ApiAircraft](docs/ApiAircraft.md)
 - [Radarbox::ApiAirport](docs/ApiAirport.md)
 - [Radarbox::ApiFlight](docs/ApiFlight.md)
 - [Radarbox::ApiMetar](docs/ApiMetar.md)
 - [Radarbox::ApiNotam](docs/ApiNotam.md)
 - [Radarbox::ApiNotamTranslation](docs/ApiNotamTranslation.md)
 - [Radarbox::ApiRunway](docs/ApiRunway.md)
 - [Radarbox::ApiRunwayInUse](docs/ApiRunwayInUse.md)
 - [Radarbox::ApiTaf](docs/ApiTaf.md)
 - [Radarbox::ApiTafForecast](docs/ApiTafForecast.md)
 - [Radarbox::ApiTafSkyCondition](docs/ApiTafSkyCondition.md)
 - [Radarbox::ApiTrail](docs/ApiTrail.md)
 - [Radarbox::Coordinates](docs/Coordinates.md)
 - [Radarbox::FlightsQuery](docs/FlightsQuery.md)
 - [Radarbox::FlightsResponse](docs/FlightsResponse.md)
 - [Radarbox::GeoSearchQuery](docs/GeoSearchQuery.md)
 - [Radarbox::GetAircraftResponse](docs/GetAircraftResponse.md)
 - [Radarbox::GetAirportResponse](docs/GetAirportResponse.md)
 - [Radarbox::GetMetarResponse](docs/GetMetarResponse.md)
 - [Radarbox::GetNotamsResponse](docs/GetNotamsResponse.md)
 - [Radarbox::GetTafResponse](docs/GetTafResponse.md)
 - [Radarbox::RtAircraftPositionQuery](docs/RtAircraftPositionQuery.md)

## Documentation for Authorization


### bearerToken


