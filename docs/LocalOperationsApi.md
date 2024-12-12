# WWW::OpenAPIClient::LocalOperationsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::LocalOperationsApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_admin**](LocalOperationsApi.md#add_admin) | **POST** /v1/local/admins | Create Administrator


# **add_admin**
> UserDetailDto add_admin(add_user_request_dto => $add_user_request_dto)

Create Administrator

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::LocalOperationsApi;
my $api_instance = WWW::OpenAPIClient::LocalOperationsApi->new(
);

my $add_user_request_dto = WWW::OpenAPIClient::Object::AddUserRequestDto->new(); # AddUserRequestDto | 

eval {
    my $result = $api_instance->add_admin(add_user_request_dto => $add_user_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocalOperationsApi->add_admin: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_user_request_dto** | [**AddUserRequestDto**](AddUserRequestDto.md)|  | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

