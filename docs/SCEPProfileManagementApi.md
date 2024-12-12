# CZERTAINLY::SCEPProfileManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::SCEPProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_scep_profile**](SCEPProfileManagementApi.md#bulk_delete_scep_profile) | **DELETE** /v1/scepProfiles/delete | Delete multiple SCEP Profiles
[**bulk_disable_scep_profile**](SCEPProfileManagementApi.md#bulk_disable_scep_profile) | **PATCH** /v1/scepProfiles/disable | Disable multiple SCEP Profile
[**bulk_enable_scep_profile**](SCEPProfileManagementApi.md#bulk_enable_scep_profile) | **PATCH** /v1/scepProfiles/enable | Enable multiple SCEP Profiles
[**create_scep_profile**](SCEPProfileManagementApi.md#create_scep_profile) | **POST** /v1/scepProfiles | Create SCEP Profile
[**delete_scep_profile**](SCEPProfileManagementApi.md#delete_scep_profile) | **DELETE** /v1/scepProfiles/{uuid} | Delete SCEP Profile
[**disable_scep_profile**](SCEPProfileManagementApi.md#disable_scep_profile) | **PATCH** /v1/scepProfiles/{uuid}/disable | Disable SCEP Profile
[**edit_scep_profile**](SCEPProfileManagementApi.md#edit_scep_profile) | **PUT** /v1/scepProfiles/{uuid} | Edit SCEP Profile
[**enable_scep_profile**](SCEPProfileManagementApi.md#enable_scep_profile) | **PATCH** /v1/scepProfiles/{uuid}/enable | Enable SCEP Profile
[**force_delete_scep_profiles**](SCEPProfileManagementApi.md#force_delete_scep_profiles) | **DELETE** /v1/scepProfiles/delete/force | Force delete multiple SCEP Profiles
[**get_scep_profile**](SCEPProfileManagementApi.md#get_scep_profile) | **GET** /v1/scepProfiles/{uuid} | Get details of SCEP Profile
[**list_scep_ca_certificates**](SCEPProfileManagementApi.md#list_scep_ca_certificates) | **GET** /v1/scepProfiles/caCertificates | Get list of certificates eligible for CA certificate of SCEP requests
[**list_scep_profiles**](SCEPProfileManagementApi.md#list_scep_profiles) | **GET** /v1/scepProfiles | Get list of SCEP Profiles
[**update_ra_profile**](SCEPProfileManagementApi.md#update_ra_profile) | **PATCH** /v1/scepProfiles/{uuid}/raProfiles/{raProfileUuid} | Update RA Profile for SCEP Profile


# **bulk_delete_scep_profile**
> ARRAY[BulkActionMessageDto] bulk_delete_scep_profile(request_body => $request_body)

Delete multiple SCEP Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | SCEP Profile UUIDs

eval {
    my $result = $api_instance->bulk_delete_scep_profile(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->bulk_delete_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| SCEP Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_disable_scep_profile**
> bulk_disable_scep_profile(request_body => $request_body)

Disable multiple SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | SCEP Profile UUIDs

eval {
    $api_instance->bulk_disable_scep_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->bulk_disable_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| SCEP Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_scep_profile**
> bulk_enable_scep_profile(request_body => $request_body)

Enable multiple SCEP Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | SCEP Profile UUIDs

eval {
    $api_instance->bulk_enable_scep_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->bulk_enable_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| SCEP Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_scep_profile**
> ScepProfileDetailDto create_scep_profile(scep_profile_request_dto => $scep_profile_request_dto)

Create SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $scep_profile_request_dto = CZERTAINLY::Object::ScepProfileRequestDto->new(); # ScepProfileRequestDto | 

eval {
    my $result = $api_instance->create_scep_profile(scep_profile_request_dto => $scep_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->create_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scep_profile_request_dto** | [**ScepProfileRequestDto**](ScepProfileRequestDto.md)|  | 

### Return type

[**ScepProfileDetailDto**](ScepProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_scep_profile**
> delete_scep_profile(uuid => $uuid)

Delete SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID

eval {
    $api_instance->delete_scep_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->delete_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_scep_profile**
> disable_scep_profile(uuid => $uuid)

Disable SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID

eval {
    $api_instance->disable_scep_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->disable_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_scep_profile**
> ScepProfileDetailDto edit_scep_profile(uuid => $uuid, scep_profile_edit_request_dto => $scep_profile_edit_request_dto)

Edit SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID
my $scep_profile_edit_request_dto = CZERTAINLY::Object::ScepProfileEditRequestDto->new(); # ScepProfileEditRequestDto | 

eval {
    my $result = $api_instance->edit_scep_profile(uuid => $uuid, scep_profile_edit_request_dto => $scep_profile_edit_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->edit_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 
 **scep_profile_edit_request_dto** | [**ScepProfileEditRequestDto**](ScepProfileEditRequestDto.md)|  | 

### Return type

[**ScepProfileDetailDto**](ScepProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_scep_profile**
> enable_scep_profile(uuid => $uuid)

Enable SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID

eval {
    $api_instance->enable_scep_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->enable_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_scep_profiles**
> ARRAY[BulkActionMessageDto] force_delete_scep_profiles(request_body => $request_body)

Force delete multiple SCEP Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | SCEP Profile UUIDs

eval {
    my $result = $api_instance->force_delete_scep_profiles(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->force_delete_scep_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| SCEP Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scep_profile**
> ScepProfileDetailDto get_scep_profile(uuid => $uuid)

Get details of SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID

eval {
    my $result = $api_instance->get_scep_profile(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->get_scep_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 

### Return type

[**ScepProfileDetailDto**](ScepProfileDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_scep_ca_certificates**
> ARRAY[CertificateDto] list_scep_ca_certificates(intune_enabled => $intune_enabled)

Get list of certificates eligible for CA certificate of SCEP requests

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $intune_enabled = null; # boolean | flag to return certificates that are eligible for Intune integration

eval {
    my $result = $api_instance->list_scep_ca_certificates(intune_enabled => $intune_enabled);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->list_scep_ca_certificates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **intune_enabled** | **boolean**| flag to return certificates that are eligible for Intune integration | 

### Return type

[**ARRAY[CertificateDto]**](CertificateDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_scep_profiles**
> ARRAY[ScepProfileDto] list_scep_profiles()

Get list of SCEP Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);


eval {
    my $result = $api_instance->list_scep_profiles();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->list_scep_profiles: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ScepProfileDto]**](ScepProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_ra_profile**
> update_ra_profile(uuid => $uuid, ra_profile_uuid => $ra_profile_uuid)

Update RA Profile for SCEP Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SCEPProfileManagementApi;
my $api_instance = CZERTAINLY::SCEPProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | SCEP Profile UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->update_ra_profile(uuid => $uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling SCEPProfileManagementApi->update_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| SCEP Profile UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

