# Radarbox::StatisticsApi

All URIs are relative to *https://api.radarbox.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_airlines_statistics**](StatisticsApi.md#get_airlines_statistics) | **GET** /statistics/airlines | Statistics for major airlines
[**get_bus_jet_models_statistics_internal**](StatisticsApi.md#get_bus_jet_models_statistics_internal) | **GET** /statistics/flights/business/models | Statistics for business jet operators
[**get_bus_jet_operator_statistics_internal**](StatisticsApi.md#get_bus_jet_operator_statistics_internal) | **GET** /statistics/flights/business/operators | Statistics for business jet operators
[**get_business_airport_statistics**](StatisticsApi.md#get_business_airport_statistics) | **GET** /statistics/airports/business | Statistics for business flights on major airports
[**get_business_flights_statistics**](StatisticsApi.md#get_business_flights_statistics) | **GET** /statistics/flights/business | Flights statistics (business)
[**get_commercial_airport_statistics**](StatisticsApi.md#get_commercial_airport_statistics) | **GET** /statistics/airports/commercial | Statistics for commercial flights on major airports
[**get_commercial_flights_statistics**](StatisticsApi.md#get_commercial_flights_statistics) | **GET** /statistics/flights/commercial | Flights statistics (commercial)
[**get_flights_statistics**](StatisticsApi.md#get_flights_statistics) | **GET** /statistics/flights | Statistics for all flights
[**get_major_airport_statistics**](StatisticsApi.md#get_major_airport_statistics) | **GET** /statistics/airports | Statistics for major airports

# **get_airlines_statistics**
> AirlineStatisticsResponse get_airlines_statistics

Statistics for major airlines

Get statistics for major airlines

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for major airlines
  result = api_instance.get_airlines_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_airlines_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AirlineStatisticsResponse**](AirlineStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_bus_jet_models_statistics_internal**
> BusinessJetModelStatisticsResponse get_bus_jet_models_statistics_internal

Statistics for business jet operators

Get statistics for major airlines

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for business jet operators
  result = api_instance.get_bus_jet_models_statistics_internal
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_bus_jet_models_statistics_internal: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BusinessJetModelStatisticsResponse**](BusinessJetModelStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_bus_jet_operator_statistics_internal**
> BusinessJetOperatorStatisticsResponse get_bus_jet_operator_statistics_internal

Statistics for business jet operators

Get statistics for major airlines

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for business jet operators
  result = api_instance.get_bus_jet_operator_statistics_internal
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_bus_jet_operator_statistics_internal: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BusinessJetOperatorStatisticsResponse**](BusinessJetOperatorStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_business_airport_statistics**
> AirportsStatisticsResponse get_business_airport_statistics

Statistics for business flights on major airports

Get statistics for business flights on major airports

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for business flights on major airports
  result = api_instance.get_business_airport_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_business_airport_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AirportsStatisticsResponse**](AirportsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_business_flights_statistics**
> FlightsStatisticsResponse get_business_flights_statistics

Flights statistics (business)

Get statistics for all business flights

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Flights statistics (business)
  result = api_instance.get_business_flights_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_business_flights_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FlightsStatisticsResponse**](FlightsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_commercial_airport_statistics**
> AirportsStatisticsResponse get_commercial_airport_statistics

Statistics for commercial flights on major airports

Get statistics for commercial flights on major airports

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for commercial flights on major airports
  result = api_instance.get_commercial_airport_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_commercial_airport_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AirportsStatisticsResponse**](AirportsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_commercial_flights_statistics**
> FlightsStatisticsResponse get_commercial_flights_statistics

Flights statistics (commercial)

Get statistics for all commercial flights

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Flights statistics (commercial)
  result = api_instance.get_commercial_flights_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_commercial_flights_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FlightsStatisticsResponse**](FlightsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_flights_statistics**
> FlightsStatisticsResponse get_flights_statistics

Statistics for all flights

Get statistics for all flights worldwide

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for all flights
  result = api_instance.get_flights_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_flights_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FlightsStatisticsResponse**](FlightsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_major_airport_statistics**
> AirportsStatisticsResponse get_major_airport_statistics

Statistics for major airports

Get statistics for a specific airport

### Example
```ruby
# load the gem
require 'radarbox-api'
# setup authorization
Radarbox.configure do |config|
end

api_instance = Radarbox::StatisticsApi.new

begin
  #Statistics for major airports
  result = api_instance.get_major_airport_statistics
  p result
rescue Radarbox::ApiError => e
  puts "Exception when calling StatisticsApi->get_major_airport_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AirportsStatisticsResponse**](AirportsStatisticsResponse.md)

### Authorization

[bearerToken](../README.md#bearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



