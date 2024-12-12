# WWW::OpenAPIClient::CertificateKeyGroupApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CertificateKeyGroupApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_group**](CertificateKeyGroupApi.md#bulk_delete_group) | **DELETE** /v1/groups | Delete multiple Groups
[**create_group**](CertificateKeyGroupApi.md#create_group) | **POST** /v1/groups | Create Group
[**delete_group**](CertificateKeyGroupApi.md#delete_group) | **DELETE** /v1/groups/{uuid} | Delete Group
[**edit_group**](CertificateKeyGroupApi.md#edit_group) | **PUT** /v1/groups/{uuid} | Edit Group
[**get_group**](CertificateKeyGroupApi.md#get_group) | **GET** /v1/groups/{uuid} | Group details
[**list_groups**](CertificateKeyGroupApi.md#list_groups) | **GET** /v1/groups | List Groups


# **bulk_delete_group**
> bulk_delete_group(request_body => $request_body)

Delete multiple Groups

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Group UUIDs

eval {
    $api_instance->bulk_delete_group(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->bulk_delete_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Group UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group**
> UuidDto create_group(group_request_dto => $group_request_dto)

Create Group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);

my $group_request_dto = WWW::OpenAPIClient::Object::GroupRequestDto->new(); # GroupRequestDto | 

eval {
    my $result = $api_instance->create_group(group_request_dto => $group_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->create_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_request_dto** | [**GroupRequestDto**](GroupRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**
> delete_group(uuid => $uuid)

Delete Group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);

my $uuid = "uuid_example"; # string | Group UUID

eval {
    $api_instance->delete_group(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->delete_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Group UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_group**
> GroupDto edit_group(uuid => $uuid, group_request_dto => $group_request_dto)

Edit Group

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);

my $uuid = "uuid_example"; # string | Group UUID
my $group_request_dto = WWW::OpenAPIClient::Object::GroupRequestDto->new(); # GroupRequestDto | 

eval {
    my $result = $api_instance->edit_group(uuid => $uuid, group_request_dto => $group_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->edit_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Group UUID | 
 **group_request_dto** | [**GroupRequestDto**](GroupRequestDto.md)|  | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group**
> GroupDto get_group(uuid => $uuid)

Group details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);

my $uuid = "uuid_example"; # string | 

eval {
    my $result = $api_instance->get_group(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->get_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**|  | 

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_groups**
> ARRAY[GroupDto] list_groups()

List Groups

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateKeyGroupApi;
my $api_instance = WWW::OpenAPIClient::CertificateKeyGroupApi->new(
);


eval {
    my $result = $api_instance->list_groups();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateKeyGroupApi->list_groups: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[GroupDto]**](GroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

