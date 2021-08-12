# Radarbox::AircraftApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_aircraft**](AircraftApi.md#get_aircraft) | **GET** /aircraft | Aircraft by ID
[**search_aircraft**](AircraftApi.md#search_aircraft) | **GET** /aircraft/search | Aircraft search

# **get_aircraft**
> GetAircraftResponse get_aircraft(opts)

Aircraft by ID

Use this endpoint if you are looking for details or statistics for a specific aircraft (find by Mode-S hex code or tail number)

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AircraftApi.new
opts = { 
  mode_s: 'mode_s_example', # String | Mode-S code
  registration: 'registration_example' # String | Registration
}

begin
  #Aircraft by ID
  result = api_instance.get_aircraft(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AircraftApi->get_aircraft: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mode_s** | **String**| Mode-S code | [optional] 
 **registration** | **String**| Registration | [optional] 

### Return type

[**GetAircraftResponse**](GetAircraftResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **search_aircraft**
> SearchAircraftResponse search_aircraft(opts)

Aircraft search

Use this endpoint if you want to list all aircraft of a specific ICAO type or company

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AircraftApi.new
opts = { 
  aircraft_type: 'aircraft_type_example', # String | ICAO aircraft type
  airline: 'airline_example' # String | Airline (ICAO code)
}

begin
  #Aircraft search
  result = api_instance.search_aircraft(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AircraftApi->search_aircraft: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aircraft_type** | **String**| ICAO aircraft type | [optional] 
 **airline** | **String**| Airline (ICAO code) | [optional] 

### Return type

[**SearchAircraftResponse**](SearchAircraftResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



