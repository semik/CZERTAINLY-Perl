# WWW::OpenAPIClient::CallbackApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CallbackApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callback**](CallbackApi.md#callback) | **POST** /v1/connectors/{uuid}/{functionGroup}/{kind}/callback | Connector Callback API
[**resource_callback**](CallbackApi.md#resource_callback) | **POST** /v1/{resource}/{parentObjectUuid}/callback | Resource Callback API


# **callback**
> object callback(uuid => $uuid, function_group => $function_group, kind => $kind, request_attribute_callback => $request_attribute_callback)

Connector Callback API

API to trigger the Callback for Connector.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CallbackApi;
my $api_instance = WWW::OpenAPIClient::CallbackApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID
my $function_group = "function_group_example"; # string | Function Group
my $kind = "kind_example"; # string | Kind
my $request_attribute_callback = WWW::OpenAPIClient::Object::RequestAttributeCallback->new(); # RequestAttributeCallback | 

eval {
    my $result = $api_instance->callback(uuid => $uuid, function_group => $function_group, kind => $kind, request_attribute_callback => $request_attribute_callback);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallbackApi->callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 
 **function_group** | **string**| Function Group | 
 **kind** | **string**| Kind | 
 **request_attribute_callback** | [**RequestAttributeCallback**](RequestAttributeCallback.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_callback**
> object resource_callback(resource => $resource, parent_object_uuid => $parent_object_uuid, request_attribute_callback => $request_attribute_callback)

Resource Callback API

API to trigger the Callback for resource.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CallbackApi;
my $api_instance = WWW::OpenAPIClient::CallbackApi->new(
);

my $resource = new WWW::OpenAPIClient.Resource(); # Resource | Name of the resource
my $parent_object_uuid = "parent_object_uuid_example"; # string | Parent Object UUID
my $request_attribute_callback = WWW::OpenAPIClient::Object::RequestAttributeCallback->new(); # RequestAttributeCallback | 

eval {
    my $result = $api_instance->resource_callback(resource => $resource, parent_object_uuid => $parent_object_uuid, request_attribute_callback => $request_attribute_callback);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CallbackApi->resource_callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)| Name of the resource | 
 **parent_object_uuid** | **string**| Parent Object UUID | 
 **request_attribute_callback** | [**RequestAttributeCallback**](RequestAttributeCallback.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

