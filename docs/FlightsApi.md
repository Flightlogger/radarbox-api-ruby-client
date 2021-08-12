# Radarbox::FlightsApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aircraft_position**](FlightsApi.md#aircraft_position) | **POST** /flights/live | Get live flights 
[**geosearch**](FlightsApi.md#geosearch) | **POST** /flights/geosearch | Search flights by geographical area
[**search**](FlightsApi.md#search) | **POST** /flights/search | Search flights

# **aircraft_position**
> FlightsResponse aircraft_position(opts)

Get live flights 

Use this endpoint if your goal is to get real time information for live flights, either if you are looking for a specific geographical location or particular aircraft/airline/airport.

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::RtAircraftPositionQuery.new # RtAircraftPositionQuery | 
  authorization: 'authorization_example' # String | 
}

begin
  #Get live flights 
  result = api_instance.aircraft_position(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->aircraft_position: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RtAircraftPositionQuery**](RtAircraftPositionQuery.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**FlightsResponse**](FlightsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **geosearch**
> FlightsResponse geosearch(opts)

Search flights by geographical area

Use this endpoint if you are interested in knowing which flights have flown over a particular geographical area at a given point in time

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::GeoSearchQuery.new # GeoSearchQuery | 
  authorization: 'authorization_example' # String | 
  page: 56 # Integer | Request page
  page_size: 56 # Integer | Page size
}

begin
  #Search flights by geographical area
  result = api_instance.geosearch(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->geosearch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GeoSearchQuery**](GeoSearchQuery.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 
 **page** | **Integer**| Request page | [optional] 
 **page_size** | **Integer**| Page size | [optional] 

### Return type

[**FlightsResponse**](FlightsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **search**
> FlightsResponse search(opts)

Search flights

Use this endpoint for general flight searches - past, present or future (scheduled) - based on departure/arrival location or individual flights and tail numbers. The search always needs to be restricted by date (either departure, arrival or both).

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::FlightsApi.new
opts = { 
  body: Radarbox::FlightsQuery.new # FlightsQuery | 
  authorization: 'authorization_example' # String | 
  page: 56 # Integer | Request page
  page_size: 56 # Integer | Page size
}

begin
  #Search flights
  result = api_instance.search(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling FlightsApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FlightsQuery**](FlightsQuery.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 
 **page** | **Integer**| Request page | [optional] 
 **page_size** | **Integer**| Page size | [optional] 

### Return type

[**FlightsResponse**](FlightsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



