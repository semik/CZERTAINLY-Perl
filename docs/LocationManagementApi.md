# CZERTAINLY::LocationManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::LocationManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_location**](LocationManagementApi.md#add_location) | **POST** /v1/entities/{entityUuid}/locations | Add Location
[**delete_location**](LocationManagementApi.md#delete_location) | **DELETE** /v1/entities/{entityUuid}/locations/{locationUuid} | Delete Location
[**disable_location**](LocationManagementApi.md#disable_location) | **PATCH** /v1/entities/{entityUuid}/locations/{locationUuid}/disable | Disable Location
[**edit_location**](LocationManagementApi.md#edit_location) | **PUT** /v1/entities/{entityUuid}/locations/{locationUuid} | Edit Location
[**enable_location**](LocationManagementApi.md#enable_location) | **PATCH** /v1/entities/{entityUuid}/locations/{locationUuid}/enable | Enable Location
[**get_location**](LocationManagementApi.md#get_location) | **GET** /v1/entities/{entityUuid}/locations/{locationUuid} | Get Location Details
[**get_searchable_field_information**](LocationManagementApi.md#get_searchable_field_information) | **GET** /v1/locations/search | Get Locations searchable fields information
[**issue_certificate_to_location**](LocationManagementApi.md#issue_certificate_to_location) | **POST** /v1/entities/{entityUuid}/locations/{locationUuid}/certificates | Issue Certificate to Location
[**list_csr_attributes**](LocationManagementApi.md#list_csr_attributes) | **GET** /v1/entities/{entityUuid}/locations/{locationUuid}/attributes/issue | Get CSR Attributes
[**list_locations**](LocationManagementApi.md#list_locations) | **POST** /v1/locations | List Locations
[**list_push_attributes**](LocationManagementApi.md#list_push_attributes) | **GET** /v1/entities/{entityUuid}/locations/{locationUuid}/attributes/push | Get push Attributes
[**push_certificate**](LocationManagementApi.md#push_certificate) | **PUT** /v1/entities/{entityUuid}/locations/{locationUuid}/certificates/{certificateUuid} | Push Certificate to Location
[**remove_certificate**](LocationManagementApi.md#remove_certificate) | **DELETE** /v1/entities/{entityUuid}/locations/{locationUuid}/certificates/{certificateUuid} | Remove Certificate from Location
[**renew_certificate_in_location**](LocationManagementApi.md#renew_certificate_in_location) | **PATCH** /v1/entities/{entityUuid}/locations/{locationUuid}/certificates/{certificateUuid} | Renew Certificate in Location
[**update_location_content**](LocationManagementApi.md#update_location_content) | **PUT** /v1/entities/{entityUuid}/locations/{locationUuid}/sync | Sync Location content


# **add_location**
> UuidDto add_location(entity_uuid => $entity_uuid, add_location_request_dto => $add_location_request_dto)

Add Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $add_location_request_dto = CZERTAINLY::Object::AddLocationRequestDto->new(); # AddLocationRequestDto | 

eval {
    my $result = $api_instance->add_location(entity_uuid => $entity_uuid, add_location_request_dto => $add_location_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->add_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **add_location_request_dto** | [**AddLocationRequestDto**](AddLocationRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_location**
> delete_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Delete Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    $api_instance->delete_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->delete_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_location**
> disable_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Disable Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    $api_instance->disable_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->disable_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_location**
> LocationDto edit_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, edit_location_request_dto => $edit_location_request_dto)

Edit Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID
my $edit_location_request_dto = CZERTAINLY::Object::EditLocationRequestDto->new(); # EditLocationRequestDto | 

eval {
    my $result = $api_instance->edit_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, edit_location_request_dto => $edit_location_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->edit_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 
 **edit_location_request_dto** | [**EditLocationRequestDto**](EditLocationRequestDto.md)|  | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_location**
> enable_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Enable Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    $api_instance->enable_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->enable_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_location**
> LocationDto get_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Get Location Details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    my $result = $api_instance->get_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->get_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information()

Get Locations searchable fields information

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->get_searchable_field_information: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SearchFieldDataByGroupDto]**](SearchFieldDataByGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_certificate_to_location**
> LocationDto issue_certificate_to_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, issue_to_location_request_dto => $issue_to_location_request_dto)

Issue Certificate to Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID
my $issue_to_location_request_dto = CZERTAINLY::Object::IssueToLocationRequestDto->new(); # IssueToLocationRequestDto | 

eval {
    my $result = $api_instance->issue_certificate_to_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, issue_to_location_request_dto => $issue_to_location_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->issue_certificate_to_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 
 **issue_to_location_request_dto** | [**IssueToLocationRequestDto**](IssueToLocationRequestDto.md)|  | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_csr_attributes**
> ARRAY[BaseAttributeDto] list_csr_attributes(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Get CSR Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    my $result = $api_instance->list_csr_attributes(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->list_csr_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_locations**
> LocationsResponseDto list_locations(search_request_dto => $search_request_dto)

List Locations

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $search_request_dto = CZERTAINLY::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_locations(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->list_locations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**LocationsResponseDto**](LocationsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_push_attributes**
> ARRAY[BaseAttributeDto] list_push_attributes(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Get push Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    my $result = $api_instance->list_push_attributes(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->list_push_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **push_certificate**
> LocationDto push_certificate(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid, push_to_location_request_dto => $push_to_location_request_dto)

Push Certificate to Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID
my $push_to_location_request_dto = CZERTAINLY::Object::PushToLocationRequestDto->new(); # PushToLocationRequestDto | 

eval {
    my $result = $api_instance->push_certificate(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid, push_to_location_request_dto => $push_to_location_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->push_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 
 **push_to_location_request_dto** | [**PushToLocationRequestDto**](PushToLocationRequestDto.md)|  | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_certificate**
> LocationDto remove_certificate(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid)

Remove Certificate from Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->remove_certificate(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->remove_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renew_certificate_in_location**
> LocationDto renew_certificate_in_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid)

Renew Certificate in Location

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->renew_certificate_in_location(entity_uuid => $entity_uuid, location_uuid => $location_uuid, certificate_uuid => $certificate_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->renew_certificate_in_location: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_location_content**
> LocationDto update_location_content(entity_uuid => $entity_uuid, location_uuid => $location_uuid)

Sync Location content

### Example
```perl
use Data::Dumper;
use CZERTAINLY::LocationManagementApi;
my $api_instance = CZERTAINLY::LocationManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity UUID
my $location_uuid = "location_uuid_example"; # string | Location UUID

eval {
    my $result = $api_instance->update_location_content(entity_uuid => $entity_uuid, location_uuid => $location_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling LocationManagementApi->update_location_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity UUID | 
 **location_uuid** | **string**| Location UUID | 

### Return type

[**LocationDto**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

