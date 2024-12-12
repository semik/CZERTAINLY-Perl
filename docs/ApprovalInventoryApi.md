# WWW::OpenAPIClient::ApprovalInventoryApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ApprovalInventoryApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_approval**](ApprovalInventoryApi.md#approve_approval) | **PATCH** /v1/approvals/{uuid}/approve | Approving of the Approval
[**approve_approval_recipient**](ApprovalInventoryApi.md#approve_approval_recipient) | **PATCH** /v1/approvals/{uuid}/approveRecipient | Approving of Recipient of the Approval
[**get_approval**](ApprovalInventoryApi.md#get_approval) | **GET** /v1/approvals/{uuid} | Get Approval Detail
[**list_approvals**](ApprovalInventoryApi.md#list_approvals) | **GET** /v1/approvals | List of Approvals
[**list_user_approvals**](ApprovalInventoryApi.md#list_user_approvals) | **GET** /v1/approvals/user | List of User&#39;s Approvals
[**reject_approval**](ApprovalInventoryApi.md#reject_approval) | **PATCH** /v1/approvals/{uuid}/reject | Rejecting of the Approval
[**reject_approval_recipient**](ApprovalInventoryApi.md#reject_approval_recipient) | **PATCH** /v1/approvals/{uuid}/rejectRecipient | Rejecting of Recipient of the Approval


# **approve_approval**
> approve_approval(uuid => $uuid)

Approving of the Approval

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval UUID

eval {
    $api_instance->approve_approval(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->approve_approval: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **approve_approval_recipient**
> approve_approval_recipient(uuid => $uuid, user_approval_dto => $user_approval_dto)

Approving of Recipient of the Approval

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval UUID
my $user_approval_dto = WWW::OpenAPIClient::Object::UserApprovalDto->new(); # UserApprovalDto | 

eval {
    $api_instance->approve_approval_recipient(uuid => $uuid, user_approval_dto => $user_approval_dto);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->approve_approval_recipient: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval UUID | 
 **user_approval_dto** | [**UserApprovalDto**](UserApprovalDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_approval**
> ApprovalDetailDto get_approval(uuid => $uuid)

Get Approval Detail

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval UUID

eval {
    my $result = $api_instance->get_approval(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->get_approval: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval UUID | 

### Return type

[**ApprovalDetailDto**](ApprovalDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_approvals**
> ApprovalResponseDto list_approvals(pagination_request_dto => $pagination_request_dto)

List of Approvals

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $pagination_request_dto = new WWW::OpenAPIClient.PaginationRequestDto(); # PaginationRequestDto | 

eval {
    my $result = $api_instance->list_approvals(pagination_request_dto => $pagination_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->list_approvals: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagination_request_dto** | [**PaginationRequestDto**](.md)|  | 

### Return type

[**ApprovalResponseDto**](ApprovalResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_user_approvals**
> ApprovalResponseDto list_user_approvals(pagination_request_dto => $pagination_request_dto, approval_user_dto => $approval_user_dto)

List of User's Approvals

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $pagination_request_dto = new WWW::OpenAPIClient.PaginationRequestDto(); # PaginationRequestDto | 
my $approval_user_dto = new WWW::OpenAPIClient.ApprovalUserDto(); # ApprovalUserDto | Select if you want to list all history of approvals by user

eval {
    my $result = $api_instance->list_user_approvals(pagination_request_dto => $pagination_request_dto, approval_user_dto => $approval_user_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->list_user_approvals: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagination_request_dto** | [**PaginationRequestDto**](.md)|  | 
 **approval_user_dto** | [**ApprovalUserDto**](.md)| Select if you want to list all history of approvals by user | 

### Return type

[**ApprovalResponseDto**](ApprovalResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reject_approval**
> reject_approval(uuid => $uuid)

Rejecting of the Approval

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval UUID

eval {
    $api_instance->reject_approval(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->reject_approval: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reject_approval_recipient**
> reject_approval_recipient(uuid => $uuid, user_approval_dto => $user_approval_dto)

Rejecting of Recipient of the Approval

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ApprovalInventoryApi;
my $api_instance = WWW::OpenAPIClient::ApprovalInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Approval UUID
my $user_approval_dto = WWW::OpenAPIClient::Object::UserApprovalDto->new(); # UserApprovalDto | 

eval {
    $api_instance->reject_approval_recipient(uuid => $uuid, user_approval_dto => $user_approval_dto);
};
if ($@) {
    warn "Exception when calling ApprovalInventoryApi->reject_approval_recipient: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Approval UUID | 
 **user_approval_dto** | [**UserApprovalDto**](UserApprovalDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

