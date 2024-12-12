# CZERTAINLY::TokenInstanceControllerApi

## Load the API package
```perl
use CZERTAINLY::Object::TokenInstanceControllerApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_token_instance**](TokenInstanceControllerApi.md#activate_token_instance) | **PATCH** /v1/tokens/{uuid}/activate | Activate Token Instance
[**create_token_instance**](TokenInstanceControllerApi.md#create_token_instance) | **POST** /v1/tokens | Create a new Token Instance
[**deactivate_token_instance**](TokenInstanceControllerApi.md#deactivate_token_instance) | **PATCH** /v1/tokens/{uuid}/deactivate | Deactivate Token Instance
[**delete_token_instance**](TokenInstanceControllerApi.md#delete_token_instance) | **DELETE** /v1/tokens/{uuid} | 
[**delete_token_instance1**](TokenInstanceControllerApi.md#delete_token_instance1) | **DELETE** /v1/tokens/delete | 
[**get_token_instance**](TokenInstanceControllerApi.md#get_token_instance) | **GET** /v1/tokens/{uuid} | Get Token Instance Detail
[**list_token_instance_activation_attributes**](TokenInstanceControllerApi.md#list_token_instance_activation_attributes) | **GET** /v1/tokens/{uuid}/activate/attributes | List Token activation Attributes
[**list_token_instances**](TokenInstanceControllerApi.md#list_token_instances) | **GET** /v1/tokens | List Token Instances
[**list_token_profile_attributes**](TokenInstanceControllerApi.md#list_token_profile_attributes) | **GET** /v1/tokens/{uuid}/tokenProfiles/attributes | List Token Profile Attributes
[**reload_status**](TokenInstanceControllerApi.md#reload_status) | **PATCH** /v1/tokens/{uuid} | Reload Token Instance status
[**update_token_instance**](TokenInstanceControllerApi.md#update_token_instance) | **PUT** /v1/tokens/{uuid} | Update Token Instance


# **activate_token_instance**
> activate_token_instance(uuid => $uuid, request_attribute_dto => $request_attribute_dto)

Activate Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token Instance UUID
my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->activate_token_instance(uuid => $uuid, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->activate_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Instance UUID | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_token_instance**
> TokenInstanceDetailDto create_token_instance(token_instance_request_dto => $token_instance_request_dto)

Create a new Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $token_instance_request_dto = CZERTAINLY::Object::TokenInstanceRequestDto->new(); # TokenInstanceRequestDto | 

eval {
    my $result = $api_instance->create_token_instance(token_instance_request_dto => $token_instance_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->create_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_request_dto** | [**TokenInstanceRequestDto**](TokenInstanceRequestDto.md)|  | 

### Return type

[**TokenInstanceDetailDto**](TokenInstanceDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_token_instance**
> deactivate_token_instance(uuid => $uuid)

Deactivate Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token Instance UUID

eval {
    $api_instance->deactivate_token_instance(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->deactivate_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token_instance**
> delete_token_instance(uuid => $uuid)



Delete Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token Instance UUID

eval {
    $api_instance->delete_token_instance(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->delete_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token_instance1**
> delete_token_instance1(request_body => $request_body)



Delete multiple Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Token Instance UUIDs

eval {
    $api_instance->delete_token_instance1(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->delete_token_instance1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Token Instance UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_instance**
> TokenInstanceDetailDto get_token_instance(uuid => $uuid)

Get Token Instance Detail

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | UUID of the Token Instance

eval {
    my $result = $api_instance->get_token_instance(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->get_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| UUID of the Token Instance | 

### Return type

[**TokenInstanceDetailDto**](TokenInstanceDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_token_instance_activation_attributes**
> ARRAY[BaseAttributeDto] list_token_instance_activation_attributes(uuid => $uuid)

List Token activation Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token Instance UUID

eval {
    my $result = $api_instance->list_token_instance_activation_attributes(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->list_token_instance_activation_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Instance UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_token_instances**
> ARRAY[TokenInstanceDto] list_token_instances()

List Token Instances

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);


eval {
    my $result = $api_instance->list_token_instances();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->list_token_instances: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[TokenInstanceDto]**](TokenInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_token_profile_attributes**
> ARRAY[BaseAttributeDto] list_token_profile_attributes(uuid => $uuid)

List Token Profile Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token instance UUID

eval {
    my $result = $api_instance->list_token_profile_attributes(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->list_token_profile_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token instance UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reload_status**
> TokenInstanceDetailDto reload_status(uuid => $uuid)

Reload Token Instance status

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | UUID of the Token Instance

eval {
    my $result = $api_instance->reload_status(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->reload_status: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| UUID of the Token Instance | 

### Return type

[**TokenInstanceDetailDto**](TokenInstanceDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_token_instance**
> TokenInstanceDetailDto update_token_instance(uuid => $uuid, token_instance_request_dto => $token_instance_request_dto)

Update Token Instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenInstanceControllerApi;
my $api_instance = CZERTAINLY::TokenInstanceControllerApi->new(
);

my $uuid = "uuid_example"; # string | Token Instance UUID
my $token_instance_request_dto = CZERTAINLY::Object::TokenInstanceRequestDto->new(); # TokenInstanceRequestDto | 

eval {
    my $result = $api_instance->update_token_instance(uuid => $uuid, token_instance_request_dto => $token_instance_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenInstanceControllerApi->update_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Instance UUID | 
 **token_instance_request_dto** | [**TokenInstanceRequestDto**](TokenInstanceRequestDto.md)|  | 

### Return type

[**TokenInstanceDetailDto**](TokenInstanceDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

