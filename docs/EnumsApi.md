# CZERTAINLY::EnumsApi

## Load the API package
```perl
use CZERTAINLY::Object::EnumsApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_platform_enums**](EnumsApi.md#get_platform_enums) | **GET** /v1/enums | Get platform enums


# **get_platform_enums**
> HASH[string,HASH[string,EnumItemDto]] get_platform_enums()

Get platform enums

### Example
```perl
use Data::Dumper;
use CZERTAINLY::EnumsApi;
my $api_instance = CZERTAINLY::EnumsApi->new(
);


eval {
    my $result = $api_instance->get_platform_enums();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EnumsApi->get_platform_enums: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**HASH[string,HASH[string,EnumItemDto]]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

