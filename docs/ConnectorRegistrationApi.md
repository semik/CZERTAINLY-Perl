# WWW::OpenAPIClient::ConnectorRegistrationApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ConnectorRegistrationApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**register**](ConnectorRegistrationApi.md#register) | **POST** /v1/connector/register | Register a Connector


# **register**
> UuidDto register(connector_request_dto => $connector_request_dto)

Register a Connector

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ConnectorRegistrationApi;
my $api_instance = WWW::OpenAPIClient::ConnectorRegistrationApi->new(
);

my $connector_request_dto = WWW::OpenAPIClient::Object::ConnectorRequestDto->new(); # ConnectorRequestDto | 

eval {
    my $result = $api_instance->register(connector_request_dto => $connector_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorRegistrationApi->register: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_request_dto** | [**ConnectorRequestDto**](ConnectorRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

