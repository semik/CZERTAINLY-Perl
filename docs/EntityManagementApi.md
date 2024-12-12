# WWW::OpenAPIClient::EntityManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::EntityManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_entity_instance**](EntityManagementApi.md#create_entity_instance) | **POST** /v1/entities | Add Entity instance
[**delete_entity_instance**](EntityManagementApi.md#delete_entity_instance) | **DELETE** /v1/entities/{entityUuid} | Delete Entity instance
[**edit_entity_instance**](EntityManagementApi.md#edit_entity_instance) | **PUT** /v1/entities/{entityUuid} | Edit Entity instance
[**get_entity_instance**](EntityManagementApi.md#get_entity_instance) | **GET** /v1/entities/{entityUuid} | Get Entity instance details
[**get_searchable_field_information2**](EntityManagementApi.md#get_searchable_field_information2) | **GET** /v1/entities/search | Get Entities searchable fields information
[**list_entity_instances**](EntityManagementApi.md#list_entity_instances) | **POST** /v1/entities/list | List Entity instances
[**list_location_attributes**](EntityManagementApi.md#list_location_attributes) | **GET** /v1/entities/{entityUuid}/attributes/location | List Location Attributes
[**validate_location_attributes**](EntityManagementApi.md#validate_location_attributes) | **POST** /v1/entities/{entityUuid}/attributes/location/validate | Validate Location Attributes


# **create_entity_instance**
> UuidDto create_entity_instance(entity_instance_request_dto => $entity_instance_request_dto)

Add Entity instance

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_instance_request_dto = WWW::OpenAPIClient::Object::EntityInstanceRequestDto->new(); # EntityInstanceRequestDto | 

eval {
    my $result = $api_instance->create_entity_instance(entity_instance_request_dto => $entity_instance_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->create_entity_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_instance_request_dto** | [**EntityInstanceRequestDto**](EntityInstanceRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entity_instance**
> delete_entity_instance(entity_uuid => $entity_uuid)

Delete Entity instance

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity instance UUID

eval {
    $api_instance->delete_entity_instance(entity_uuid => $entity_uuid);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->delete_entity_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_entity_instance**
> EntityInstanceDto edit_entity_instance(entity_uuid => $entity_uuid, entity_instance_update_request_dto => $entity_instance_update_request_dto)

Edit Entity instance

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity instance UUID
my $entity_instance_update_request_dto = WWW::OpenAPIClient::Object::EntityInstanceUpdateRequestDto->new(); # EntityInstanceUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_entity_instance(entity_uuid => $entity_uuid, entity_instance_update_request_dto => $entity_instance_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->edit_entity_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity instance UUID | 
 **entity_instance_update_request_dto** | [**EntityInstanceUpdateRequestDto**](EntityInstanceUpdateRequestDto.md)|  | 

### Return type

[**EntityInstanceDto**](EntityInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_instance**
> EntityInstanceDto get_entity_instance(entity_uuid => $entity_uuid)

Get Entity instance details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity instance UUID

eval {
    my $result = $api_instance->get_entity_instance(entity_uuid => $entity_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->get_entity_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity instance UUID | 

### Return type

[**EntityInstanceDto**](EntityInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information2**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information2()

Get Entities searchable fields information

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information2();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->get_searchable_field_information2: $@\n";
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

# **list_entity_instances**
> EntityInstanceResponseDto list_entity_instances(search_request_dto => $search_request_dto)

List Entity instances

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $search_request_dto = WWW::OpenAPIClient::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_entity_instances(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->list_entity_instances: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**EntityInstanceResponseDto**](EntityInstanceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_location_attributes**
> ARRAY[BaseAttributeDto] list_location_attributes(entity_uuid => $entity_uuid)

List Location Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity instance UUID

eval {
    my $result = $api_instance->list_location_attributes(entity_uuid => $entity_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->list_location_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity instance UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_location_attributes**
> validate_location_attributes(entity_uuid => $entity_uuid, request_attribute_dto => $request_attribute_dto)

Validate Location Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EntityManagementApi;
my $api_instance = WWW::OpenAPIClient::EntityManagementApi->new(
);

my $entity_uuid = "entity_uuid_example"; # string | Entity instance UUID
my $request_attribute_dto = [WWW::OpenAPIClient::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_location_attributes(entity_uuid => $entity_uuid, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling EntityManagementApi->validate_location_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_uuid** | **string**| Entity instance UUID | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

