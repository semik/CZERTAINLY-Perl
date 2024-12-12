# WWW::OpenAPIClient::DiscoveryManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DiscoveryManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_discovery**](DiscoveryManagementApi.md#bulk_delete_discovery) | **DELETE** /v1/discoveries | Delete Multiple Discoveries
[**create_discovery**](DiscoveryManagementApi.md#create_discovery) | **POST** /v1/discoveries | Create Discovery
[**delete_discovery**](DiscoveryManagementApi.md#delete_discovery) | **DELETE** /v1/discoveries/{uuid} | Delete Discovery
[**get_discovery**](DiscoveryManagementApi.md#get_discovery) | **GET** /v1/discoveries/{uuid} | Discovery Details
[**get_discovery_certificates**](DiscoveryManagementApi.md#get_discovery_certificates) | **GET** /v1/discoveries/{uuid}/certificates | Discovery Details
[**get_searchable_field_information3**](DiscoveryManagementApi.md#get_searchable_field_information3) | **GET** /v1/discoveries/search | Get Discovery searchable fields information
[**list_discoveries**](DiscoveryManagementApi.md#list_discoveries) | **POST** /v1/discoveries/list | List Discovery
[**schedule_discovery**](DiscoveryManagementApi.md#schedule_discovery) | **POST** /v1/discoveries/schedule | Schedule Discovery


# **bulk_delete_discovery**
> bulk_delete_discovery(request_body => $request_body)

Delete Multiple Discoveries

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Discovery UUIDs

eval {
    $api_instance->bulk_delete_discovery(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->bulk_delete_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Discovery UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_discovery**
> UuidDto create_discovery(discovery_dto => $discovery_dto)

Create Discovery

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $discovery_dto = WWW::OpenAPIClient::Object::DiscoveryDto->new(); # DiscoveryDto | 

eval {
    my $result = $api_instance->create_discovery(discovery_dto => $discovery_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->create_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **discovery_dto** | [**DiscoveryDto**](DiscoveryDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_discovery**
> delete_discovery(uuid => $uuid)

Delete Discovery

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $uuid = "uuid_example"; # string | Discovery UUID

eval {
    $api_instance->delete_discovery(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->delete_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Discovery UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_discovery**
> DiscoveryHistoryDetailDto get_discovery(uuid => $uuid)

Discovery Details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $uuid = "uuid_example"; # string | Discovery UUID

eval {
    my $result = $api_instance->get_discovery(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->get_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Discovery UUID | 

### Return type

[**DiscoveryHistoryDetailDto**](DiscoveryHistoryDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_discovery_certificates**
> DiscoveryCertificateResponseDto get_discovery_certificates(uuid => $uuid, newly_discovered => $newly_discovered, items_per_page => $items_per_page, page_number => $page_number)

Discovery Details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $uuid = "uuid_example"; # string | Discovery UUID
my $newly_discovered = null; # boolean | 
my $items_per_page = 10; # int | 
my $page_number = 0; # int | 

eval {
    my $result = $api_instance->get_discovery_certificates(uuid => $uuid, newly_discovered => $newly_discovered, items_per_page => $items_per_page, page_number => $page_number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->get_discovery_certificates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Discovery UUID | 
 **newly_discovered** | **boolean**|  | [optional] 
 **items_per_page** | **int**|  | [optional] [default to 10]
 **page_number** | **int**|  | [optional] [default to 0]

### Return type

[**DiscoveryCertificateResponseDto**](DiscoveryCertificateResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information3**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information3()

Get Discovery searchable fields information

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information3();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->get_searchable_field_information3: $@\n";
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

# **list_discoveries**
> DiscoveryResponseDto list_discoveries(search_request_dto => $search_request_dto)

List Discovery

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $search_request_dto = WWW::OpenAPIClient::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_discoveries(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->list_discoveries: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**DiscoveryResponseDto**](DiscoveryResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **schedule_discovery**
> UuidDto schedule_discovery(schedule_discovery_dto => $schedule_discovery_dto)

Schedule Discovery

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DiscoveryManagementApi;
my $api_instance = WWW::OpenAPIClient::DiscoveryManagementApi->new(
);

my $schedule_discovery_dto = WWW::OpenAPIClient::Object::ScheduleDiscoveryDto->new(); # ScheduleDiscoveryDto | 

eval {
    my $result = $api_instance->schedule_discovery(schedule_discovery_dto => $schedule_discovery_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DiscoveryManagementApi->schedule_discovery: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedule_discovery_dto** | [**ScheduleDiscoveryDto**](ScheduleDiscoveryDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

