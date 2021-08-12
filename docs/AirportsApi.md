# Radarbox::AirportsApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_airport**](AirportsApi.md#get_airport) | **GET** /airports/{icaoCode} | Airport by code
[**get_datis**](AirportsApi.md#get_datis) | **GET** /airports/{icaoCode}/datis | Get D-ATIS by airport
[**get_metar**](AirportsApi.md#get_metar) | **GET** /airports/{icaoCode}/metar | Get METAR by airport
[**get_taf**](AirportsApi.md#get_taf) | **GET** /airports/{icaoCode}/taf | Get TAF by airport
[**search_airport**](AirportsApi.md#search_airport) | **GET** /airports/search | Airport search

# **get_airport**
> GetAirportResponse get_airport(icao_code)

Airport by code

Use this endpoint if you know exactly which airport you need to know details for - you can search by ICAO or IATA code.

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



# **get_datis**
> GetDatisResponse get_datis(icao_code)

Get D-ATIS by airport

ATIS (Automatic Terminal Information Service) is a service that continuously broadcasts aeronautical information around the airport. D-ATIS is the text transcription of the information provided by it. Use this endpoint to find the latest information for a specific airport.

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
  #Get D-ATIS by airport
  result = api_instance.get_datis(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->get_datis: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icao_code** | **String**| ICAO code | 

### Return type

[**GetDatisResponse**](GetDatisResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_metar**
> GetMetarResponse get_metar(icao_code)

Get METAR by airport

METARs (METeorological Aerodrome Reports) provide a report of the current weather conditions in the vicinity of an aerodrome. Use this endpoint to get the most up-to-date METAR information.

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



# **get_taf**
> GetTafResponse get_taf(icao_code)

Get TAF by airport

TAF (Terminal Aerodrome Forecast) is a weather forecast information service provided by airports to serve the surrounding air traffic. TAF reports are updated several times throughout the day to ensure that pilots have access to the most up-to-date information as possible. You can use this endpoint to get the latest weather information for a specific airport.

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



# **search_airport**
> GetAirportsResponse search_airport(opts)

Airport search

Use this endpoint if you are trying to find all airports in a country, city or within a specific region.

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirportsApi.new
opts = { 
  country_code: 'country_code_example', # String | Country code (2 letters)
  country_name: 'country_name_example', # String | Country name
  icao_code: 'icao_code_example', # String | Airport ICAO code
  only_major: true, # BOOLEAN | Only major airports
  city: 'city_example', # String | City
  latitude1: 1.2, # Float | Latitude 1
  longitude1: 1.2, # Float | Longitude 1
  latitude2: 1.2, # Float | Latitude 2
  longitude2: 1.2 # Float | Longitude 2
}

begin
  #Airport search
  result = api_instance.search_airport(opts)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirportsApi->search_airport: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **String**| Country code (2 letters) | [optional] 
 **country_name** | **String**| Country name | [optional] 
 **icao_code** | **String**| Airport ICAO code | [optional] 
 **only_major** | **BOOLEAN**| Only major airports | [optional] 
 **city** | **String**| City | [optional] 
 **latitude1** | **Float**| Latitude 1 | [optional] 
 **longitude1** | **Float**| Longitude 1 | [optional] 
 **latitude2** | **Float**| Latitude 2 | [optional] 
 **longitude2** | **Float**| Longitude 2 | [optional] 

### Return type

[**GetAirportsResponse**](GetAirportsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



