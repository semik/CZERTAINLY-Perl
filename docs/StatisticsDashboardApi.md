# WWW::OpenAPIClient::StatisticsDashboardApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::StatisticsDashboardApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_statistics**](StatisticsDashboardApi.md#get_statistics) | **GET** /v1/statistics | Get Dashboard/Statistics Details


# **get_statistics**
> StatisticsDto get_statistics()

Get Dashboard/Statistics Details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::StatisticsDashboardApi;
my $api_instance = WWW::OpenAPIClient::StatisticsDashboardApi->new(
);


eval {
    my $result = $api_instance->get_statistics();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StatisticsDashboardApi->get_statistics: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatisticsDto**](StatisticsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

