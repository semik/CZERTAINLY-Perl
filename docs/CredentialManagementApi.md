# CZERTAINLY::CredentialManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::CredentialManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_credential**](CredentialManagementApi.md#bulk_delete_credential) | **DELETE** /v1/credentials | Delete multiple Credentials
[**create_credential**](CredentialManagementApi.md#create_credential) | **POST** /v1/credentials | Add Credential
[**delete_credential**](CredentialManagementApi.md#delete_credential) | **DELETE** /v1/credentials/{uuid} | Delete Credential
[**disable_credential**](CredentialManagementApi.md#disable_credential) | **PATCH** /v1/credentials/{uuid}/disable | Disable Credential
[**edit_credential**](CredentialManagementApi.md#edit_credential) | **PUT** /v1/credentials/{uuid} | Edit Credential
[**enable_credential**](CredentialManagementApi.md#enable_credential) | **PATCH** /v1/credentials/{uuid}/enable | Enable Credential
[**get_credential**](CredentialManagementApi.md#get_credential) | **GET** /v1/credentials/{uuid} | Details of a Credentials
[**list_credentials**](CredentialManagementApi.md#list_credentials) | **GET** /v1/credentials | List of All Credentials


# **bulk_delete_credential**
> bulk_delete_credential(request_body => $request_body)

Delete multiple Credentials

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Credential UUIDs

eval {
    $api_instance->bulk_delete_credential(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->bulk_delete_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Credential UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_credential**
> UuidDto create_credential(credential_request_dto => $credential_request_dto)

Add Credential

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $credential_request_dto = CZERTAINLY::Object::CredentialRequestDto->new(); # CredentialRequestDto | 

eval {
    my $result = $api_instance->create_credential(credential_request_dto => $credential_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->create_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credential_request_dto** | [**CredentialRequestDto**](CredentialRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_credential**
> delete_credential(uuid => $uuid)

Delete Credential

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $uuid = "uuid_example"; # string | Credential UUID

eval {
    $api_instance->delete_credential(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->delete_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Credential UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_credential**
> disable_credential(uuid => $uuid)

Disable Credential

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $uuid = "uuid_example"; # string | Credential UUID

eval {
    $api_instance->disable_credential(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->disable_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Credential UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_credential**
> CredentialDto edit_credential(uuid => $uuid, credential_update_request_dto => $credential_update_request_dto)

Edit Credential

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $uuid = "uuid_example"; # string | Credential UUID
my $credential_update_request_dto = CZERTAINLY::Object::CredentialUpdateRequestDto->new(); # CredentialUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_credential(uuid => $uuid, credential_update_request_dto => $credential_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->edit_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Credential UUID | 
 **credential_update_request_dto** | [**CredentialUpdateRequestDto**](CredentialUpdateRequestDto.md)|  | 

### Return type

[**CredentialDto**](CredentialDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_credential**
> enable_credential(uuid => $uuid)

Enable Credential

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $uuid = "uuid_example"; # string | Credential UUID

eval {
    $api_instance->enable_credential(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->enable_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Credential UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_credential**
> CredentialDto get_credential(uuid => $uuid)

Details of a Credentials

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);

my $uuid = "uuid_example"; # string | Credential UUID

eval {
    my $result = $api_instance->get_credential(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->get_credential: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Credential UUID | 

### Return type

[**CredentialDto**](CredentialDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_credentials**
> ARRAY[CredentialDto] list_credentials()

List of All Credentials

### Example
```perl
use Data::Dumper;
use CZERTAINLY::CredentialManagementApi;
my $api_instance = CZERTAINLY::CredentialManagementApi->new(
);


eval {
    my $result = $api_instance->list_credentials();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CredentialManagementApi->list_credentials: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CredentialDto]**](CredentialDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

