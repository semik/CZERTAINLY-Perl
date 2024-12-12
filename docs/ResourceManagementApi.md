# WWW::OpenAPIClient::ResourceManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ResourceManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_resource_events**](ResourceManagementApi.md#list_resource_events) | **GET** /v1/resources/{resource}/events | Retrieve a list of all events that can be triggered by a resource
[**list_resource_rule_filter_fields**](ResourceManagementApi.md#list_resource_rule_filter_fields) | **GET** /v1/resources/{resource}/filters/rules | Retrieve filter fields that can be used for creating rule conditions and actions
[**list_resources**](ResourceManagementApi.md#list_resources) | **GET** /v1/resources | Retrieve list of resources with information and settings


# **list_resource_events**
> ARRAY[ResourceEventDto] list_resource_events(resource => $resource)

Retrieve a list of all events that can be triggered by a resource

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ResourceManagementApi;
my $api_instance = WWW::OpenAPIClient::ResourceManagementApi->new(
);

my $resource = new WWW::OpenAPIClient.Resource(); # Resource | Resource

eval {
    my $result = $api_instance->list_resource_events(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceManagementApi->list_resource_events: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)| Resource | 

### Return type

[**ARRAY[ResourceEventDto]**](ResourceEventDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_resource_rule_filter_fields**
> ARRAY[SearchFieldDataByGroupDto] list_resource_rule_filter_fields(resource => $resource, settable => $settable)

Retrieve filter fields that can be used for creating rule conditions and actions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ResourceManagementApi;
my $api_instance = WWW::OpenAPIClient::ResourceManagementApi->new(
);

my $resource = new WWW::OpenAPIClient.Resource(); # Resource | Resource
my $settable = null; # boolean | 

eval {
    my $result = $api_instance->list_resource_rule_filter_fields(resource => $resource, settable => $settable);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceManagementApi->list_resource_rule_filter_fields: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)| Resource | 
 **settable** | **boolean**|  | [optional] 

### Return type

[**ARRAY[SearchFieldDataByGroupDto]**](SearchFieldDataByGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_resources**
> ARRAY[ResourceDto] list_resources()

Retrieve list of resources with information and settings

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ResourceManagementApi;
my $api_instance = WWW::OpenAPIClient::ResourceManagementApi->new(
);


eval {
    my $result = $api_instance->list_resources();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ResourceManagementApi->list_resources: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ResourceDto]**](ResourceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

