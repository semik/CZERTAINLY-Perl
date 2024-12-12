# WWW::OpenAPIClient::ApprovalProfileInventoryApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ApprovalProfileInventoryApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_approval_profile**](ApprovalProfileInventoryApi.md#create_approval_profile) | **POST** /v1/approvalProfiles | Create a Approval profile
[**delete_approval_profile**](ApprovalProfileInventoryApi.md#delete_approval_profile) | **DELETE** /v1/approvalProfiles/{uuid} | Delete an approval profile
[**disable_approval_profile**](ApprovalProfileInventoryApi.md#disable_approval_profile) | **PATCH** /v1/approvalProfiles/{uuid}/disable | Disabling of Approval profile
[**edit_approval_profile**](ApprovalProfileInventoryApi.md#edit_approval_profile) | **PUT** /v1/approvalProfiles/{uuid} | Edit an Approval profile
[**enable_approval_profile**](ApprovalProfileInventoryApi.md#enable_approval_profile) | **PATCH** /v1/approvalProfiles/{uuid}/enable | Enabling of Approval profile
[**get_approval_profile**](ApprovalProfileInventoryApi.md#get_approval_profile) | **GET** /v1/approvalProfiles/{uuid} | Get Approval Profile Details
[**list_approval_profiles**](ApprovalProfileInventoryApi.md#list_approval_profiles) | **GET** /v1/approvalProfiles | List Approval Profiles


# **create_approval_profile**
> UuidDto create_approval_profile(approval_profile_request_dto => $approval_profile_request_dto)

Create a Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $approval_profile_request_dto = WWW::OpenAPIClient::Object::ApprovalProfileRequestDto->new(); # ApprovalProfileRequestDto | 

eval {
    my $result = $api_instance->create_approval_profile(approval_profile_request_dto => $approval_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->create_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approval_profile_request_dto** | [**ApprovalProfileRequestDto**](ApprovalProfileRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_approval_profile**
> delete_approval_profile(uuid => $uuid)

Delete an approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval profile UUID

eval {
    $api_instance->delete_approval_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->delete_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_approval_profile**
> disable_approval_profile(uuid => $uuid)

Disabling of Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval profile UUID

eval {
    $api_instance->disable_approval_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->disable_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_approval_profile**
> object edit_approval_profile(uuid => $uuid, approval_profile_update_request_dto => $approval_profile_update_request_dto)

Edit an Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval profile UUID
my $approval_profile_update_request_dto = WWW::OpenAPIClient::Object::ApprovalProfileUpdateRequestDto->new(); # ApprovalProfileUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_approval_profile(uuid => $uuid, approval_profile_update_request_dto => $approval_profile_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->edit_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval profile UUID | 
 **approval_profile_update_request_dto** | [**ApprovalProfileUpdateRequestDto**](ApprovalProfileUpdateRequestDto.md)|  | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_approval_profile**
> enable_approval_profile(uuid => $uuid)

Enabling of Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval profile UUID

eval {
    $api_instance->enable_approval_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->enable_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_approval_profile**
> ApprovalProfileDetailDto get_approval_profile(uuid => $uuid, approval_profile_for_version_dto => $approval_profile_for_version_dto)

Get Approval Profile Details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval profile UUID
my $approval_profile_for_version_dto = new WWW::OpenAPIClient.ApprovalProfileForVersionDto(); # ApprovalProfileForVersionDto | Select specific version of the approval profile

eval {
    my $result = $api_instance->get_approval_profile(uuid => $uuid, approval_profile_for_version_dto => $approval_profile_for_version_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->get_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval profile UUID | 
 **approval_profile_for_version_dto** | [**ApprovalProfileForVersionDto**](.md)| Select specific version of the approval profile | 

### Return type

[**ApprovalProfileDetailDto**](ApprovalProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_approval_profiles**
> ApprovalProfileResponseDto list_approval_profiles(pagination_request_dto => $pagination_request_dto)

List Approval Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalProfileInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new(
);

my $pagination_request_dto = new WWW::OpenAPIClient.PaginationRequestDto(); # PaginationRequestDto | 

eval {
    my $result = $api_instance->list_approval_profiles(pagination_request_dto => $pagination_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalProfileInventoryApi->list_approval_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagination_request_dto** | [**PaginationRequestDto**](.md)|  | 

### Return type

[**ApprovalProfileResponseDto**](ApprovalProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

