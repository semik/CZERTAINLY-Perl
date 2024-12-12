# WWW::OpenAPIClient::AuthenticationManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AuthenticationManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_auth_resources**](AuthenticationManagementApi.md#get_auth_resources) | **GET** /v1/auth/resources | Get Auth Resources
[**get_objects_for_resource**](AuthenticationManagementApi.md#get_objects_for_resource) | **GET** /v1/auth/resources/{resourceName}/objects | Get List of objects for Object Access
[**profile**](AuthenticationManagementApi.md#profile) | **GET** /v1/auth/profile | Profile Authorization
[**update_user_profile**](AuthenticationManagementApi.md#update_user_profile) | **PUT** /v1/auth/profile | Update User Profile


# **get_auth_resources**
> ARRAY[AuthResourceDto] get_auth_resources()

Get Auth Resources

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuthenticationManagementApi;
my $api_instance = WWW::OpenAPIClient::AuthenticationManagementApi->new(
);


eval {
    my $result = $api_instance->get_auth_resources();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthenticationManagementApi->get_auth_resources: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[AuthResourceDto]**](AuthResourceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_objects_for_resource**
> ARRAY[NameAndUuidDto] get_objects_for_resource(resource_name => $resource_name)

Get List of objects for Object Access

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuthenticationManagementApi;
my $api_instance = WWW::OpenAPIClient::AuthenticationManagementApi->new(
);

my $resource_name = new WWW::OpenAPIClient.Resource(); # Resource | Resource Name

eval {
    my $result = $api_instance->get_objects_for_resource(resource_name => $resource_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthenticationManagementApi->get_objects_for_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_name** | [**Resource**](.md)| Resource Name | 

### Return type

[**ARRAY[NameAndUuidDto]**](NameAndUuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **profile**
> UserDetailDto profile()

Profile Authorization

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuthenticationManagementApi;
my $api_instance = WWW::OpenAPIClient::AuthenticationManagementApi->new(
);


eval {
    my $result = $api_instance->profile();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthenticationManagementApi->profile: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_profile**
> UserDetailDto update_user_profile(update_user_request_dto => $update_user_request_dto)

Update User Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuthenticationManagementApi;
my $api_instance = WWW::OpenAPIClient::AuthenticationManagementApi->new(
);

my $update_user_request_dto = WWW::OpenAPIClient::Object::UpdateUserRequestDto->new(); # UpdateUserRequestDto | 

eval {
    my $result = $api_instance->update_user_profile(update_user_request_dto => $update_user_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthenticationManagementApi->update_user_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_user_request_dto** | [**UpdateUserRequestDto**](UpdateUserRequestDto.md)|  | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

