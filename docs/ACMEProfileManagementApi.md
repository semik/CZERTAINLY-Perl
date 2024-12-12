# CZERTAINLY::ACMEProfileManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ACMEProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_acme_profile**](ACMEProfileManagementApi.md#bulk_delete_acme_profile) | **DELETE** /v1/acmeProfiles/delete | Delete multiple ACME Profiles
[**bulk_disable_acme_profile**](ACMEProfileManagementApi.md#bulk_disable_acme_profile) | **PATCH** /v1/acmeProfiles/disable | Disable multiple ACME Profile
[**bulk_enable_acme_profile**](ACMEProfileManagementApi.md#bulk_enable_acme_profile) | **PATCH** /v1/acmeProfiles/enable | Enable multiple ACME Profiles
[**create_acme_profile**](ACMEProfileManagementApi.md#create_acme_profile) | **POST** /v1/acmeProfiles | Create ACME Profile
[**delete_acme_profile**](ACMEProfileManagementApi.md#delete_acme_profile) | **DELETE** /v1/acmeProfiles/{uuid} | Delete ACME Profile
[**disable_acme_profile**](ACMEProfileManagementApi.md#disable_acme_profile) | **PATCH** /v1/acmeProfiles/{uuid}/disable | Disable ACME Profile
[**edit_acme_profile**](ACMEProfileManagementApi.md#edit_acme_profile) | **PUT** /v1/acmeProfiles/{uuid} | Edit ACME Profile
[**enable_acme_profile**](ACMEProfileManagementApi.md#enable_acme_profile) | **PATCH** /v1/acmeProfiles/{uuid}/enable | Enable ACME Profile
[**force_delete_acme_profiles**](ACMEProfileManagementApi.md#force_delete_acme_profiles) | **DELETE** /v1/acmeProfiles/delete/force | Force delete multiple ACME Profiles
[**get_acme_profile**](ACMEProfileManagementApi.md#get_acme_profile) | **GET** /v1/acmeProfiles/{uuid} | Get details of ACME Profile
[**list_acme_profiles**](ACMEProfileManagementApi.md#list_acme_profiles) | **GET** /v1/acmeProfiles | Get list of ACME Profiles
[**update_ra_profile2**](ACMEProfileManagementApi.md#update_ra_profile2) | **PATCH** /v1/acmeProfiles/{uuid}/raprofile/{raProfileUuid} | Update RA Profile for ACME Profile


# **bulk_delete_acme_profile**
> ARRAY[BulkActionMessageDto] bulk_delete_acme_profile(request_body => $request_body)

Delete multiple ACME Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Profile UUIDs

eval {
    my $result = $api_instance->bulk_delete_acme_profile(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->bulk_delete_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_disable_acme_profile**
> bulk_disable_acme_profile(request_body => $request_body)

Disable multiple ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Profile UUIDs

eval {
    $api_instance->bulk_disable_acme_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->bulk_disable_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_acme_profile**
> bulk_enable_acme_profile(request_body => $request_body)

Enable multiple ACME Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Profile UUIDs

eval {
    $api_instance->bulk_enable_acme_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->bulk_enable_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_acme_profile**
> UuidDto create_acme_profile(acme_profile_request_dto => $acme_profile_request_dto)

Create ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $acme_profile_request_dto = CZERTAINLY::Object::AcmeProfileRequestDto->new(); # AcmeProfileRequestDto | 

eval {
    my $result = $api_instance->create_acme_profile(acme_profile_request_dto => $acme_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->create_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acme_profile_request_dto** | [**AcmeProfileRequestDto**](AcmeProfileRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_acme_profile**
> delete_acme_profile(uuid => $uuid)

Delete ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID

eval {
    $api_instance->delete_acme_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->delete_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_acme_profile**
> disable_acme_profile(uuid => $uuid)

Disable ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID

eval {
    $api_instance->disable_acme_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->disable_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_acme_profile**
> AcmeProfileDto edit_acme_profile(uuid => $uuid, acme_profile_edit_request_dto => $acme_profile_edit_request_dto)

Edit ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID
my $acme_profile_edit_request_dto = CZERTAINLY::Object::AcmeProfileEditRequestDto->new(); # AcmeProfileEditRequestDto | 

eval {
    my $result = $api_instance->edit_acme_profile(uuid => $uuid, acme_profile_edit_request_dto => $acme_profile_edit_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->edit_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 
 **acme_profile_edit_request_dto** | [**AcmeProfileEditRequestDto**](AcmeProfileEditRequestDto.md)|  | 

### Return type

[**AcmeProfileDto**](AcmeProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_acme_profile**
> enable_acme_profile(uuid => $uuid)

Enable ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID

eval {
    $api_instance->enable_acme_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->enable_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_acme_profiles**
> ARRAY[BulkActionMessageDto] force_delete_acme_profiles(request_body => $request_body)

Force delete multiple ACME Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Profile UUIDs

eval {
    my $result = $api_instance->force_delete_acme_profiles(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->force_delete_acme_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_acme_profile**
> AcmeProfileDto get_acme_profile(uuid => $uuid)

Get details of ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID

eval {
    my $result = $api_instance->get_acme_profile(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->get_acme_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 

### Return type

[**AcmeProfileDto**](AcmeProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_acme_profiles**
> ARRAY[AcmeProfileListDto] list_acme_profiles()

Get list of ACME Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);


eval {
    my $result = $api_instance->list_acme_profiles();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->list_acme_profiles: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[AcmeProfileListDto]**](AcmeProfileListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_ra_profile2**
> update_ra_profile2(uuid => $uuid, ra_profile_uuid => $ra_profile_uuid)

Update RA Profile for ACME Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEProfileManagementApi;
my $api_instance = CZERTAINLY::ACMEProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | ACME Profile UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->update_ra_profile2(uuid => $uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling ACMEProfileManagementApi->update_ra_profile2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| ACME Profile UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

