# CZERTAINLY::AuthorityManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::AuthorityManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_authority_instance**](AuthorityManagementApi.md#bulk_delete_authority_instance) | **DELETE** /v1/authorities | Delete multiple Authority instances
[**create_authority_instance**](AuthorityManagementApi.md#create_authority_instance) | **POST** /v1/authorities | Add Authority instance
[**delete_authority_instance**](AuthorityManagementApi.md#delete_authority_instance) | **DELETE** /v1/authorities/{uuid} | Delete Authority instance
[**edit_authority_instance**](AuthorityManagementApi.md#edit_authority_instance) | **PUT** /v1/authorities/{uuid} | Edit Authority instance
[**force_delete_authority_instances**](AuthorityManagementApi.md#force_delete_authority_instances) | **DELETE** /v1/authorities/force | Force delete multiple Authority instances
[**get_authority_instance**](AuthorityManagementApi.md#get_authority_instance) | **GET** /v1/authorities/{uuid} | Details of an Authority instance
[**list_authority_instances**](AuthorityManagementApi.md#list_authority_instances) | **GET** /v1/authorities | List of available Authority instances
[**list_cas_in_profile**](AuthorityManagementApi.md#list_cas_in_profile) | **GET** /v1/authorities/{uuid}/endentityprofiles/{endEntityProfileId}/cas | 
[**list_certificate_profiles**](AuthorityManagementApi.md#list_certificate_profiles) | **GET** /v1/authorities/{uuid}/endentityprofiles/{endEntityProfileId}/certificateprofiles | 
[**list_entity_profiles**](AuthorityManagementApi.md#list_entity_profiles) | **GET** /v1/authorities/{uuid}/endentityprofiles | 
[**list_ra_profile_attributes**](AuthorityManagementApi.md#list_ra_profile_attributes) | **GET** /v1/authorities/{uuid}/attributes/raProfile | List RA Profile Attributes
[**validate_ra_profile_attributes**](AuthorityManagementApi.md#validate_ra_profile_attributes) | **POST** /v1/authorities/{uuid}/attributes/raProfile/validate | Validate RA Profile Attributes


# **bulk_delete_authority_instance**
> ARRAY[BulkActionMessageDto] bulk_delete_authority_instance(request_body => $request_body)

Delete multiple Authority instances

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Authority Instance UUIDs

eval {
    my $result = $api_instance->bulk_delete_authority_instance(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->bulk_delete_authority_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Authority Instance UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_authority_instance**
> UuidDto create_authority_instance(authority_instance_request_dto => $authority_instance_request_dto)

Add Authority instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $authority_instance_request_dto = CZERTAINLY::Object::AuthorityInstanceRequestDto->new(); # AuthorityInstanceRequestDto | 

eval {
    my $result = $api_instance->create_authority_instance(authority_instance_request_dto => $authority_instance_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->create_authority_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_instance_request_dto** | [**AuthorityInstanceRequestDto**](AuthorityInstanceRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_authority_instance**
> delete_authority_instance(uuid => $uuid)

Delete Authority instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID

eval {
    $api_instance->delete_authority_instance(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->delete_authority_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_authority_instance**
> AuthorityInstanceDto edit_authority_instance(uuid => $uuid, authority_instance_update_request_dto => $authority_instance_update_request_dto)

Edit Authority instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID
my $authority_instance_update_request_dto = CZERTAINLY::Object::AuthorityInstanceUpdateRequestDto->new(); # AuthorityInstanceUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_authority_instance(uuid => $uuid, authority_instance_update_request_dto => $authority_instance_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->edit_authority_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 
 **authority_instance_update_request_dto** | [**AuthorityInstanceUpdateRequestDto**](AuthorityInstanceUpdateRequestDto.md)|  | 

### Return type

[**AuthorityInstanceDto**](AuthorityInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_authority_instances**
> ARRAY[BulkActionMessageDto] force_delete_authority_instances(request_body => $request_body)

Force delete multiple Authority instances

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | 

eval {
    my $result = $api_instance->force_delete_authority_instances(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->force_delete_authority_instances: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)|  | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authority_instance**
> AuthorityInstanceDto get_authority_instance(uuid => $uuid)

Details of an Authority instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID

eval {
    my $result = $api_instance->get_authority_instance(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->get_authority_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 

### Return type

[**AuthorityInstanceDto**](AuthorityInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_authority_instances**
> ARRAY[AuthorityInstanceDto] list_authority_instances()

List of available Authority instances

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);


eval {
    my $result = $api_instance->list_authority_instances();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->list_authority_instances: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[AuthorityInstanceDto]**](AuthorityInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cas_in_profile**
> ARRAY[NameAndIdDto] list_cas_in_profile(uuid => $uuid, end_entity_profile_id => $end_entity_profile_id)



### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID
my $end_entity_profile_id = 56; # int | 

eval {
    my $result = $api_instance->list_cas_in_profile(uuid => $uuid, end_entity_profile_id => $end_entity_profile_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->list_cas_in_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 
 **end_entity_profile_id** | **int**|  | 

### Return type

[**ARRAY[NameAndIdDto]**](NameAndIdDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_certificate_profiles**
> ARRAY[NameAndIdDto] list_certificate_profiles(uuid => $uuid, end_entity_profile_id => $end_entity_profile_id)



### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID
my $end_entity_profile_id = 56; # int | 

eval {
    my $result = $api_instance->list_certificate_profiles(uuid => $uuid, end_entity_profile_id => $end_entity_profile_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->list_certificate_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 
 **end_entity_profile_id** | **int**|  | 

### Return type

[**ARRAY[NameAndIdDto]**](NameAndIdDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_entity_profiles**
> ARRAY[NameAndIdDto] list_entity_profiles(uuid => $uuid)



### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID

eval {
    my $result = $api_instance->list_entity_profiles(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->list_entity_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 

### Return type

[**ARRAY[NameAndIdDto]**](NameAndIdDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_ra_profile_attributes**
> ARRAY[BaseAttributeDto] list_ra_profile_attributes(uuid => $uuid)

List RA Profile Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID

eval {
    my $result = $api_instance->list_ra_profile_attributes(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->list_ra_profile_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_ra_profile_attributes**
> validate_ra_profile_attributes(uuid => $uuid, request_attribute_dto => $request_attribute_dto)

Validate RA Profile Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::AuthorityManagementApi;
my $api_instance = CZERTAINLY::AuthorityManagementApi->new(
);

my $uuid = "uuid_example"; # string | Authority instance UUID
my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_ra_profile_attributes(uuid => $uuid, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling AuthorityManagementApi->validate_ra_profile_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Authority instance UUID | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

