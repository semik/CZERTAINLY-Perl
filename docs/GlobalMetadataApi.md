# CZERTAINLY::GlobalMetadataApi

## Load the API package
```perl
use CZERTAINLY::Object::GlobalMetadataApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_global_metadata**](GlobalMetadataApi.md#bulk_delete_global_metadata) | **DELETE** /v1/attributes/metadata | Delete multiple Global Metadata
[**create_global_metadata**](GlobalMetadataApi.md#create_global_metadata) | **POST** /v1/attributes/metadata | Create Global Metadata
[**delete_global_metadata**](GlobalMetadataApi.md#delete_global_metadata) | **DELETE** /v1/attributes/metadata/{uuid} | Delete Global Metadata
[**edit_global_metadata**](GlobalMetadataApi.md#edit_global_metadata) | **PUT** /v1/attributes/metadata/{uuid} | Edit Global Metadata
[**get_connector_metadata**](GlobalMetadataApi.md#get_connector_metadata) | **GET** /v1/attributes/metadata/promote | Get Available Connector Metadata
[**get_global_metadata**](GlobalMetadataApi.md#get_global_metadata) | **GET** /v1/attributes/metadata/{uuid} | Global Metadata details
[**list_global_metadata**](GlobalMetadataApi.md#list_global_metadata) | **GET** /v1/attributes/metadata | List Global Metadata
[**promote_connector_metadata**](GlobalMetadataApi.md#promote_connector_metadata) | **POST** /v1/attributes/metadata/promote | Promote Connector Metadata to Global Metadata


# **bulk_delete_global_metadata**
> bulk_delete_global_metadata(request_body => $request_body)

Delete multiple Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Global Metadata UUIDs

eval {
    $api_instance->bulk_delete_global_metadata(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->bulk_delete_global_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Global Metadata UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_global_metadata**
> UuidDto create_global_metadata(global_metadata_create_request_dto => $global_metadata_create_request_dto)

Create Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $global_metadata_create_request_dto = CZERTAINLY::Object::GlobalMetadataCreateRequestDto->new(); # GlobalMetadataCreateRequestDto | 

eval {
    my $result = $api_instance->create_global_metadata(global_metadata_create_request_dto => $global_metadata_create_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->create_global_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **global_metadata_create_request_dto** | [**GlobalMetadataCreateRequestDto**](GlobalMetadataCreateRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_global_metadata**
> delete_global_metadata(uuid => $uuid)

Delete Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $uuid = "uuid_example"; # string | Global Metadata UUID

eval {
    $api_instance->delete_global_metadata(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->delete_global_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Global Metadata UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_global_metadata**
> GlobalMetadataDefinitionDetailDto edit_global_metadata(uuid => $uuid, global_metadata_update_request_dto => $global_metadata_update_request_dto)

Edit Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $uuid = "uuid_example"; # string | Global Metadata UUID
my $global_metadata_update_request_dto = CZERTAINLY::Object::GlobalMetadataUpdateRequestDto->new(); # GlobalMetadataUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_global_metadata(uuid => $uuid, global_metadata_update_request_dto => $global_metadata_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->edit_global_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Global Metadata UUID | 
 **global_metadata_update_request_dto** | [**GlobalMetadataUpdateRequestDto**](GlobalMetadataUpdateRequestDto.md)|  | 

### Return type

[**GlobalMetadataDefinitionDetailDto**](GlobalMetadataDefinitionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_connector_metadata**
> ARRAY[ConnectorMetadataResponseDto] get_connector_metadata(connector_uuid => $connector_uuid)

Get Available Connector Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $connector_uuid = "connector_uuid_example"; # string | 

eval {
    my $result = $api_instance->get_connector_metadata(connector_uuid => $connector_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->get_connector_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_uuid** | **string**|  | [optional] 

### Return type

[**ARRAY[ConnectorMetadataResponseDto]**](ConnectorMetadataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_global_metadata**
> GlobalMetadataDefinitionDetailDto get_global_metadata(uuid => $uuid)

Global Metadata details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $uuid = "uuid_example"; # string | 

eval {
    my $result = $api_instance->get_global_metadata(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->get_global_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**|  | 

### Return type

[**GlobalMetadataDefinitionDetailDto**](GlobalMetadataDefinitionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_global_metadata**
> ARRAY[AttributeDefinitionDto] list_global_metadata()

List Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);


eval {
    my $result = $api_instance->list_global_metadata();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->list_global_metadata: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[AttributeDefinitionDto]**](AttributeDefinitionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promote_connector_metadata**
> GlobalMetadataDefinitionDetailDto promote_connector_metadata(connector_metadata_promotion_request_dto => $connector_metadata_promotion_request_dto)

Promote Connector Metadata to Global Metadata

### Example
```perl
use Data::Dumper;
use CZERTAINLY::GlobalMetadataApi;
my $api_instance = CZERTAINLY::GlobalMetadataApi->new(
);

my $connector_metadata_promotion_request_dto = CZERTAINLY::Object::ConnectorMetadataPromotionRequestDto->new(); # ConnectorMetadataPromotionRequestDto | 

eval {
    my $result = $api_instance->promote_connector_metadata(connector_metadata_promotion_request_dto => $connector_metadata_promotion_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalMetadataApi->promote_connector_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_metadata_promotion_request_dto** | [**ConnectorMetadataPromotionRequestDto**](ConnectorMetadataPromotionRequestDto.md)|  | 

### Return type

[**GlobalMetadataDefinitionDetailDto**](GlobalMetadataDefinitionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

