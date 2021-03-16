# Radarbox::AirportsApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_airport**](AirportsApi.md#get_airport) | **GET** /airports/{icaoCode} | Airport by code
[**get_metar**](AirportsApi.md#get_metar) | **GET** /airports/{icaoCode}/metar | Get METAR by airport
[**get_notams**](AirportsApi.md#get_notams) | **GET** /airports/{icaoCode}/notams | Get NOTAMS by airport
[**get_taf**](AirportsApi.md#get_taf) | **GET** /airports/{icaoCode}/taf | Get TAF by airport

# **get_airport**
> GetAirportResponse get_airport(icao_code)

Airport by code

Get airport details by code

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
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
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao_code** | **String**| ICAO code | 

### Return type

[**GetAirportResponse**](GetAirportResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_metar**
> GetMetarResponse get_metar(icao_code)

Get METAR by airport

Get airport Metar by code

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
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
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao_code** | **String**| ICAO code | 

### Return type

[**GetMetarResponse**](GetMetarResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_notams**
> GetNotamsResponse get_notams(icao_code)

Get NOTAMS by airport

Get airport NOTAMS by code

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
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
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao_code** | **String**| ICAO code | 

### Return type

[**GetNotamsResponse**](GetNotamsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_taf**
> GetTafResponse get_taf(icao_code)

Get TAF by airport

Get airport TAF by code

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
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
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao_code** | **String**| ICAO code | 

### Return type

[**GetTafResponse**](GetTafResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



