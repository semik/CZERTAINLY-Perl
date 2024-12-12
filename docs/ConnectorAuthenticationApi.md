# CZERTAINLY::ConnectorAuthenticationApi

## Load the API package
```perl
use CZERTAINLY::Object::ConnectorAuthenticationApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_key_auth_attributes**](ConnectorAuthenticationApi.md#get_api_key_auth_attributes) | **GET** /v1/connectors/auth/attributes/apiKey | Get API Key auth Attributes
[**get_authentication_types**](ConnectorAuthenticationApi.md#get_authentication_types) | **GET** /v1/connectors/auth/types | Get list of Authentication Types
[**get_basic_auth_attributes**](ConnectorAuthenticationApi.md#get_basic_auth_attributes) | **GET** /v1/connectors/auth/attributes/basic | Get basic auth Attributes
[**get_certificate_attributes**](ConnectorAuthenticationApi.md#get_certificate_attributes) | **GET** /v1/connectors/auth/attributes/certificate | Get Attributes for certificate auth
[**get_jwt_auth_attributes**](ConnectorAuthenticationApi.md#get_jwt_auth_attributes) | **GET** /v1/connectors/auth/attributes/jwt | Get JWT auth Attributes
[**validate_api_key_auth_attributes**](ConnectorAuthenticationApi.md#validate_api_key_auth_attributes) | **POST** /v1/connectors/auth/attributes/apiKey/validate | Validate API Key Attributes
[**validate_basic_auth_attributes**](ConnectorAuthenticationApi.md#validate_basic_auth_attributes) | **POST** /v1/connectors/auth/attributes/basic/validate | Validate basic auth Attributes
[**validate_certificate_attributes**](ConnectorAuthenticationApi.md#validate_certificate_attributes) | **POST** /v1/connectors/auth/attributes/certificate/validate | Validate certificate auth Attributes
[**validate_jwt_auth_attributes**](ConnectorAuthenticationApi.md#validate_jwt_auth_attributes) | **POST** /v1/connectors/auth/attributes/jwt/validate | Validate JWT auth Attributes


# **get_api_key_auth_attributes**
> ARRAY[BaseAttributeDto] get_api_key_auth_attributes()

Get API Key auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);


eval {
    my $result = $api_instance->get_api_key_auth_attributes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->get_api_key_auth_attributes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authentication_types**
> ARRAY[string] get_authentication_types()

Get list of Authentication Types

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);


eval {
    my $result = $api_instance->get_authentication_types();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->get_authentication_types: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ARRAY[string]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_basic_auth_attributes**
> ARRAY[BaseAttributeDto] get_basic_auth_attributes()

Get basic auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);


eval {
    my $result = $api_instance->get_basic_auth_attributes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->get_basic_auth_attributes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate_attributes**
> ARRAY[BaseAttributeDto] get_certificate_attributes()

Get Attributes for certificate auth

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);


eval {
    my $result = $api_instance->get_certificate_attributes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->get_certificate_attributes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jwt_auth_attributes**
> ARRAY[BaseAttributeDto] get_jwt_auth_attributes()

Get JWT auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);


eval {
    my $result = $api_instance->get_jwt_auth_attributes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->get_jwt_auth_attributes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_api_key_auth_attributes**
> validate_api_key_auth_attributes(request_attribute_dto => $request_attribute_dto)

Validate API Key Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);

my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_api_key_auth_attributes(request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->validate_api_key_auth_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_basic_auth_attributes**
> validate_basic_auth_attributes(request_attribute_dto => $request_attribute_dto)

Validate basic auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);

my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_basic_auth_attributes(request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->validate_basic_auth_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_certificate_attributes**
> validate_certificate_attributes(request_attribute_dto => $request_attribute_dto)

Validate certificate auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);

my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_certificate_attributes(request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->validate_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_jwt_auth_attributes**
> validate_jwt_auth_attributes(request_attribute_dto => $request_attribute_dto)

Validate JWT auth Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorAuthenticationApi;
my $api_instance = CZERTAINLY::ConnectorAuthenticationApi->new(
);

my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_jwt_auth_attributes(request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ConnectorAuthenticationApi->validate_jwt_auth_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

