# Radarbox::AirspaceApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_nat_tracks**](AirspaceApi.md#get_nat_tracks) | **GET** /airspace/natTracks | NAT (North Atlantic Tracks)
[**get_notams**](AirspaceApi.md#get_notams) | **GET** /airspace/{icaoCode}/notams | Get NOTAMS by airport
[**get_pac_tracks**](AirspaceApi.md#get_pac_tracks) | **GET** /airspace/pacTracks | PAC (Pacific Organized Track System - PACOTS) 

# **get_nat_tracks**
> GetNatPacTracksResponse get_nat_tracks

NAT (North Atlantic Tracks)

The North Atlantic Tracks are high altitude routes across the atlantic between Western Europe and North America. The tracks are updated daily. Use this endpoint to get the most up-to-date tracks

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirspaceApi.new

begin
  #NAT (North Atlantic Tracks)
  result = api_instance.get_nat_tracks
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirspaceApi->get_nat_tracks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNatPacTracksResponse**](GetNatPacTracksResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_notams**
> GetNotamsResponse get_notams(icao_code)

Get NOTAMS by airport

NOTAMs (NOtice To AirMen) are a way of local aviation authorities alerting pilots of potential hazards. Use this endpoint if you want to see the alerts that are relevant for a specific airport.

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirspaceApi.new
icao_code = 'icao_code_example' # String | ICAO code


begin
  #Get NOTAMS by airport
  result = api_instance.get_notams(icao_code)
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirspaceApi->get_notams: #{e}"
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



# **get_pac_tracks**
> GetNatPacTracksResponse get_pac_tracks

PAC (Pacific Organized Track System - PACOTS) 

Pacific Organized Track System describes the set of routes across the Pacific between Hawaii or North America and Japan/South-east Asia - updated on a daily basis. Use this endpoint to get the most up-to-date information.

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::AirspaceApi.new

begin
  #PAC (Pacific Organized Track System - PACOTS) 
  result = api_instance.get_pac_tracks
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling AirspaceApi->get_pac_tracks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNatPacTracksResponse**](GetNatPacTracksResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



