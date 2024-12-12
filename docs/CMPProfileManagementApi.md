# WWW::OpenAPIClient::CMPProfileManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CMPProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_cmp_profile**](CMPProfileManagementApi.md#bulk_delete_cmp_profile) | **DELETE** /v1/cmpProfiles/delete | Delete multiple CMP Profiles
[**bulk_disable_cmp_profile**](CMPProfileManagementApi.md#bulk_disable_cmp_profile) | **PATCH** /v1/cmpProfiles/disable | Disable multiple CMP Profile
[**bulk_enable_cmp_profile**](CMPProfileManagementApi.md#bulk_enable_cmp_profile) | **PATCH** /v1/cmpProfiles/enable | Enable multiple CMP Profiles
[**create_cmp_profile**](CMPProfileManagementApi.md#create_cmp_profile) | **POST** /v1/cmpProfiles | Create CMP Profile
[**delete_cmp_profile**](CMPProfileManagementApi.md#delete_cmp_profile) | **DELETE** /v1/cmpProfiles/{cmpProfileUuid} | Delete CMP Profile
[**disable_cmp_profile**](CMPProfileManagementApi.md#disable_cmp_profile) | **PATCH** /v1/cmpProfiles/{cmpProfileUuid}/disable | Disable CMP Profile
[**edit_cmp_profile**](CMPProfileManagementApi.md#edit_cmp_profile) | **PUT** /v1/cmpProfiles/{cmpProfileUuid} | Edit CMP Profile
[**enable_cmp_profile**](CMPProfileManagementApi.md#enable_cmp_profile) | **PATCH** /v1/cmpProfiles/{cmpProfileUuid}/enable | Enable CMP Profile
[**force_delete_cmp_profiles**](CMPProfileManagementApi.md#force_delete_cmp_profiles) | **DELETE** /v1/cmpProfiles/delete/force | Force delete multiple CMP Profiles
[**get_cmp_profile**](CMPProfileManagementApi.md#get_cmp_profile) | **GET** /v1/cmpProfiles/{cmpProfileUuid} | Get details of CMP Profile
[**list_cmp_profiles**](CMPProfileManagementApi.md#list_cmp_profiles) | **GET** /v1/cmpProfiles | Get list of CMP Profiles
[**list_cmp_signing_certificates**](CMPProfileManagementApi.md#list_cmp_signing_certificates) | **GET** /v1/cmpProfiles/signingCertificates | Get list of certificates eligible for signing of CMP responses
[**update_ra_profile1**](CMPProfileManagementApi.md#update_ra_profile1) | **PATCH** /v1/cmpProfiles/{cmpProfileUuid}/raProfiles/{raProfileUuid} | Update RA Profile for CMP Profile


# **bulk_delete_cmp_profile**
> ARRAY[BulkActionMessageDto] bulk_delete_cmp_profile(request_body => $request_body)

Delete multiple CMP Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | CMP Profile UUIDs

eval {
    my $result = $api_instance->bulk_delete_cmp_profile(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->bulk_delete_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| CMP Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_disable_cmp_profile**
> bulk_disable_cmp_profile(request_body => $request_body)

Disable multiple CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | CMP Profile UUIDs

eval {
    $api_instance->bulk_disable_cmp_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->bulk_disable_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| CMP Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_cmp_profile**
> bulk_enable_cmp_profile(request_body => $request_body)

Enable multiple CMP Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | CMP Profile UUIDs

eval {
    $api_instance->bulk_enable_cmp_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->bulk_enable_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| CMP Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_cmp_profile**
> CmpProfileDetailDto create_cmp_profile(cmp_profile_request_dto => $cmp_profile_request_dto)

Create CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_request_dto = WWW::OpenAPIClient::Object::CmpProfileRequestDto->new(); # CmpProfileRequestDto | 

eval {
    my $result = $api_instance->create_cmp_profile(cmp_profile_request_dto => $cmp_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->create_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_request_dto** | [**CmpProfileRequestDto**](CmpProfileRequestDto.md)|  | 

### Return type

[**CmpProfileDetailDto**](CmpProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_cmp_profile**
> delete_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid)

Delete CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID

eval {
    $api_instance->delete_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->delete_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_cmp_profile**
> disable_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid)

Disable CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID

eval {
    $api_instance->disable_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->disable_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_cmp_profile**
> CmpProfileDetailDto edit_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid, cmp_profile_edit_request_dto => $cmp_profile_edit_request_dto)

Edit CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID
my $cmp_profile_edit_request_dto = WWW::OpenAPIClient::Object::CmpProfileEditRequestDto->new(); # CmpProfileEditRequestDto | 

eval {
    my $result = $api_instance->edit_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid, cmp_profile_edit_request_dto => $cmp_profile_edit_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->edit_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 
 **cmp_profile_edit_request_dto** | [**CmpProfileEditRequestDto**](CmpProfileEditRequestDto.md)|  | 

### Return type

[**CmpProfileDetailDto**](CmpProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_cmp_profile**
> enable_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid)

Enable CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID

eval {
    $api_instance->enable_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->enable_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_cmp_profiles**
> ARRAY[BulkActionMessageDto] force_delete_cmp_profiles(request_body => $request_body)

Force delete multiple CMP Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | CMP Profile UUIDs

eval {
    my $result = $api_instance->force_delete_cmp_profiles(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->force_delete_cmp_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| CMP Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cmp_profile**
> CmpProfileDetailDto get_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid)

Get details of CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID

eval {
    my $result = $api_instance->get_cmp_profile(cmp_profile_uuid => $cmp_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->get_cmp_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 

### Return type

[**CmpProfileDetailDto**](CmpProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cmp_profiles**
> ARRAY[CmpProfileDto] list_cmp_profiles()

Get list of CMP Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);


eval {
    my $result = $api_instance->list_cmp_profiles();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->list_cmp_profiles: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CmpProfileDto]**](CmpProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cmp_signing_certificates**
> ARRAY[CertificateDto] list_cmp_signing_certificates()

Get list of certificates eligible for signing of CMP responses

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);


eval {
    my $result = $api_instance->list_cmp_signing_certificates();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->list_cmp_signing_certificates: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CertificateDto]**](CertificateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_ra_profile1**
> update_ra_profile1(cmp_profile_uuid => $cmp_profile_uuid, ra_profile_uuid => $ra_profile_uuid)

Update RA Profile for CMP Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CMPProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::CMPProfileManagementApi->new(
);

my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->update_ra_profile1(cmp_profile_uuid => $cmp_profile_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling CMPProfileManagementApi->update_ra_profile1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

