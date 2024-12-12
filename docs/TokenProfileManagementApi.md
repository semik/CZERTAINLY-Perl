# CZERTAINLY::TokenProfileManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::TokenProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_token_profile**](TokenProfileManagementApi.md#create_token_profile) | **POST** /v1/tokens/{tokenInstanceUuid}/tokenProfiles | Create Token Profile
[**delete_ra_profile_without_token_instance**](TokenProfileManagementApi.md#delete_ra_profile_without_token_instance) | **DELETE** /v1/tokenProfiles/{uuid} | Delete Token Profile
[**delete_token_profile**](TokenProfileManagementApi.md#delete_token_profile) | **DELETE** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{uuid} | Delete Token Profile
[**delete_token_profiles**](TokenProfileManagementApi.md#delete_token_profiles) | **DELETE** /v1/tokenProfiles | Delete multiple Token Profiles
[**disable_token_profile**](TokenProfileManagementApi.md#disable_token_profile) | **PATCH** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{uuid}/disable | Disable Token Profile
[**disable_token_profiles**](TokenProfileManagementApi.md#disable_token_profiles) | **PATCH** /v1/tokenProfiles/disable | Disable multiple Token Profiles
[**edit_token_profile**](TokenProfileManagementApi.md#edit_token_profile) | **PUT** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{uuid} | Edit Token Profile
[**enable_token_profile**](TokenProfileManagementApi.md#enable_token_profile) | **PATCH** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{uuid}/enable | Enable Token Profile
[**enable_token_profiles**](TokenProfileManagementApi.md#enable_token_profiles) | **PATCH** /v1/tokenProfiles/enable | Enable multiple Token Profiles
[**get_token_profile**](TokenProfileManagementApi.md#get_token_profile) | **GET** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{uuid} | Details of Token Profile
[**list_token_profiles**](TokenProfileManagementApi.md#list_token_profiles) | **GET** /v1/tokenProfiles | List of available Token Profiles
[**update_key_usages**](TokenProfileManagementApi.md#update_key_usages) | **PUT** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/usages | Update Key Usage
[**update_keys_usages**](TokenProfileManagementApi.md#update_keys_usages) | **PUT** /v1/tokens/usages | Update Key Usages for Multiple Token Profiles


# **create_token_profile**
> TokenProfileDetailDto create_token_profile(token_instance_uuid => $token_instance_uuid, add_token_profile_request_dto => $add_token_profile_request_dto)

Create Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $add_token_profile_request_dto = CZERTAINLY::Object::AddTokenProfileRequestDto->new(); # AddTokenProfileRequestDto | 

eval {
    my $result = $api_instance->create_token_profile(token_instance_uuid => $token_instance_uuid, add_token_profile_request_dto => $add_token_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->create_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **add_token_profile_request_dto** | [**AddTokenProfileRequestDto**](AddTokenProfileRequestDto.md)|  | 

### Return type

[**TokenProfileDetailDto**](TokenProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_ra_profile_without_token_instance**
> delete_ra_profile_without_token_instance(uuid => $uuid)

Delete Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Token Profile UUID

eval {
    $api_instance->delete_ra_profile_without_token_instance(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->delete_ra_profile_without_token_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Token Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token_profile**
> delete_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid)

Delete Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Token Profile UUID

eval {
    $api_instance->delete_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->delete_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Token Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token_profiles**
> delete_token_profiles(request_body => $request_body)

Delete multiple Token Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Token Profile UUIDs

eval {
    $api_instance->delete_token_profiles(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->delete_token_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Token Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_token_profile**
> disable_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid)

Disable Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Token Profile UUID

eval {
    $api_instance->disable_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->disable_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Token Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_token_profiles**
> disable_token_profiles(request_body => $request_body)

Disable multiple Token Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Token Profile UUIDs

eval {
    $api_instance->disable_token_profiles(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->disable_token_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Token Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_token_profile**
> TokenProfileDetailDto edit_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid, edit_token_profile_request_dto => $edit_token_profile_request_dto)

Edit Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Token Profile UUID
my $edit_token_profile_request_dto = CZERTAINLY::Object::EditTokenProfileRequestDto->new(); # EditTokenProfileRequestDto | 

eval {
    my $result = $api_instance->edit_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid, edit_token_profile_request_dto => $edit_token_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->edit_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Token Profile UUID | 
 **edit_token_profile_request_dto** | [**EditTokenProfileRequestDto**](EditTokenProfileRequestDto.md)|  | 

### Return type

[**TokenProfileDetailDto**](TokenProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_token_profile**
> enable_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid)

Enable Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Token Profile UUID

eval {
    $api_instance->enable_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->enable_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Token Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_token_profiles**
> enable_token_profiles(request_body => $request_body)

Enable multiple Token Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Token Profile UUIDs

eval {
    $api_instance->enable_token_profiles(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->enable_token_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Token Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_profile**
> TokenProfileDetailDto get_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid)

Details of Token Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Token Profile UUID

eval {
    my $result = $api_instance->get_token_profile(token_instance_uuid => $token_instance_uuid, uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->get_token_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Token Profile UUID | 

### Return type

[**TokenProfileDetailDto**](TokenProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_token_profiles**
> ARRAY[TokenProfileDto] list_token_profiles(enabled => $enabled)

List of available Token Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $enabled = null; # boolean | 

eval {
    my $result = $api_instance->list_token_profiles(enabled => $enabled);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->list_token_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enabled** | **boolean**|  | [optional] 

### Return type

[**ARRAY[TokenProfileDto]**](TokenProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_key_usages**
> update_key_usages(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, token_profile_key_usage_request_dto => $token_profile_key_usage_request_dto)

Update Key Usage

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $token_profile_key_usage_request_dto = CZERTAINLY::Object::TokenProfileKeyUsageRequestDto->new(); # TokenProfileKeyUsageRequestDto | 

eval {
    $api_instance->update_key_usages(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, token_profile_key_usage_request_dto => $token_profile_key_usage_request_dto);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->update_key_usages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **token_profile_key_usage_request_dto** | [**TokenProfileKeyUsageRequestDto**](TokenProfileKeyUsageRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_keys_usages**
> update_keys_usages(bulk_token_profile_key_usage_request_dto => $bulk_token_profile_key_usage_request_dto)

Update Key Usages for Multiple Token Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::TokenProfileManagementApi;
my $api_instance = CZERTAINLY::TokenProfileManagementApi->new(
);

my $bulk_token_profile_key_usage_request_dto = CZERTAINLY::Object::BulkTokenProfileKeyUsageRequestDto->new(); # BulkTokenProfileKeyUsageRequestDto | 

eval {
    $api_instance->update_keys_usages(bulk_token_profile_key_usage_request_dto => $bulk_token_profile_key_usage_request_dto);
};
if ($@) {
    warn "Exception when calling TokenProfileManagementApi->update_keys_usages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_token_profile_key_usage_request_dto** | [**BulkTokenProfileKeyUsageRequestDto**](BulkTokenProfileKeyUsageRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

