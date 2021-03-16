# Radarbox::AircraftApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_aircraft**](AircraftApi.md#get_aircraft) | **GET** /aircraft | Aircraft by id

# **get_aircraft**
> GetAircraftResponse get_aircraft(opts)

Aircraft by id

Get aircraft details by id (Mode-S hex code or tail number

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
  #Aircraft by id
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



