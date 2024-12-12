# CZERTAINLY::ConnectorManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ConnectorManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve**](ConnectorManagementApi.md#approve) | **PUT** /v1/connectors/{uuid}/approve | Approve a Connector
[**bulk_approve**](ConnectorManagementApi.md#bulk_approve) | **PUT** /v1/connectors/approve | Approve multiple Connector
[**bulk_delete_connector**](ConnectorManagementApi.md#bulk_delete_connector) | **DELETE** /v1/connectors | Delete multiple Connectors
[**bulk_reconnect**](ConnectorManagementApi.md#bulk_reconnect) | **PUT** /v1/connectors/reconnect | Reconnect multiple Connectors
[**check_health**](ConnectorManagementApi.md#check_health) | **GET** /v1/connectors/{uuid}/health | Check Health of a Connector
[**connect**](ConnectorManagementApi.md#connect) | **PUT** /v1/connectors/connect | Connect to a Connector
[**create_connector**](ConnectorManagementApi.md#create_connector) | **POST** /v1/connectors | Create a new Connector
[**delete_connector**](ConnectorManagementApi.md#delete_connector) | **DELETE** /v1/connectors/{uuid} | Delete a Connector
[**edit_connector**](ConnectorManagementApi.md#edit_connector) | **PUT** /v1/connectors/{uuid} | Edit a Connector
[**force_delete_connector**](ConnectorManagementApi.md#force_delete_connector) | **DELETE** /v1/connectors/force | Force Delete multiple Connectors
[**get_attributes**](ConnectorManagementApi.md#get_attributes) | **GET** /v1/connectors/{uuid}/attributes/{functionGroup}/{kind} | Get Attributes from a Connector
[**get_attributes_all**](ConnectorManagementApi.md#get_attributes_all) | **GET** /v1/connectors/{uuid}/attributes | Get attributes of all Function Groups
[**get_connector**](ConnectorManagementApi.md#get_connector) | **GET** /v1/connectors/{uuid} | Get details of a Connector
[**list_connectors**](ConnectorManagementApi.md#list_connectors) | **GET** /v1/connectors | List Connectors by Function Group and Kind
[**reconnect**](ConnectorManagementApi.md#reconnect) | **PUT** /v1/connectors/{uuid}/reconnect | Reconnect to a Connector
[**validate_attributes**](ConnectorManagementApi.md#validate_attributes) | **POST** /v1/connectors/{uuid}/{functionGroup}/{kind}/validate | Validate Attributes


# **approve**
> approve(uuid => $uuid)

Approve a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    $api_instance->approve(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->approve: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_approve**
> bulk_approve(request_body => $request_body)

Approve multiple Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Connector UUIDs

eval {
    $api_instance->bulk_approve(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->bulk_approve: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Connector UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_delete_connector**
> ARRAY[BulkActionMessageDto] bulk_delete_connector(request_body => $request_body)

Delete multiple Connectors

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Connector UUIDs

eval {
    my $result = $api_instance->bulk_delete_connector(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->bulk_delete_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Connector UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_reconnect**
> bulk_reconnect(request_body => $request_body)

Reconnect multiple Connectors

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Connector UUIDs

eval {
    $api_instance->bulk_reconnect(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->bulk_reconnect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Connector UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_health**
> HealthDto check_health(uuid => $uuid)

Check Health of a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    my $result = $api_instance->check_health(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->check_health: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

[**HealthDto**](HealthDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect**
> ARRAY[ConnectDto] connect(connect_request_dto => $connect_request_dto)

Connect to a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $connect_request_dto = CZERTAINLY::Object::ConnectRequestDto->new(); # ConnectRequestDto | 

eval {
    my $result = $api_instance->connect(connect_request_dto => $connect_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->connect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connect_request_dto** | [**ConnectRequestDto**](ConnectRequestDto.md)|  | 

### Return type

[**ARRAY[ConnectDto]**](ConnectDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_connector**
> UuidDto create_connector(connector_request_dto => $connector_request_dto)

Create a new Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $connector_request_dto = CZERTAINLY::Object::ConnectorRequestDto->new(); # ConnectorRequestDto | 

eval {
    my $result = $api_instance->create_connector(connector_request_dto => $connector_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->create_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_request_dto** | [**ConnectorRequestDto**](ConnectorRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_connector**
> delete_connector(uuid => $uuid)

Delete a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    $api_instance->delete_connector(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->delete_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_connector**
> ConnectorDto edit_connector(uuid => $uuid, connector_update_request_dto => $connector_update_request_dto)

Edit a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID
my $connector_update_request_dto = CZERTAINLY::Object::ConnectorUpdateRequestDto->new(); # ConnectorUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_connector(uuid => $uuid, connector_update_request_dto => $connector_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->edit_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 
 **connector_update_request_dto** | [**ConnectorUpdateRequestDto**](ConnectorUpdateRequestDto.md)|  | 

### Return type

[**ConnectorDto**](ConnectorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_connector**
> ARRAY[BulkActionMessageDto] force_delete_connector(request_body => $request_body)

Force Delete multiple Connectors

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Connector UUIDs

eval {
    my $result = $api_instance->force_delete_connector(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->force_delete_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Connector UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_attributes**
> ARRAY[BaseAttributeDto] get_attributes(uuid => $uuid, function_group => $function_group, kind => $kind)

Get Attributes from a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID
my $function_group = new CZERTAINLY.FunctionGroupCode(); # FunctionGroupCode | Function Group name
my $kind = "kind_example"; # string | Kind

eval {
    my $result = $api_instance->get_attributes(uuid => $uuid, function_group => $function_group, kind => $kind);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->get_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 
 **function_group** | [**FunctionGroupCode**](.md)| Function Group name | 
 **kind** | **string**| Kind | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_attributes_all**
> HASH[string,HASH[string,ARRAY[BaseAttributeDto]]] get_attributes_all(uuid => $uuid)

Get attributes of all Function Groups

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    my $result = $api_instance->get_attributes_all(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->get_attributes_all: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

**HASH[string,HASH[string,ARRAY[BaseAttributeDto]]]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_connector**
> ConnectorDto get_connector(uuid => $uuid)

Get details of a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    my $result = $api_instance->get_connector(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->get_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

[**ConnectorDto**](ConnectorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_connectors**
> ARRAY[ConnectorDto] list_connectors(function_group => $function_group, kind => $kind, status => $status)

List Connectors by Function Group and Kind

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $function_group = new CZERTAINLY.FunctionGroupCode(); # FunctionGroupCode | 
my $kind = "kind_example"; # string | 
my $status = new CZERTAINLY.ConnectorStatus(); # ConnectorStatus | 

eval {
    my $result = $api_instance->list_connectors(function_group => $function_group, kind => $kind, status => $status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->list_connectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **function_group** | [**FunctionGroupCode**](.md)|  | [optional] 
 **kind** | **string**|  | [optional] 
 **status** | [**ConnectorStatus**](.md)|  | [optional] 

### Return type

[**ARRAY[ConnectorDto]**](ConnectorDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconnect**
> ARRAY[ConnectDto] reconnect(uuid => $uuid)

Reconnect to a Connector

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID

eval {
    my $result = $api_instance->reconnect(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->reconnect: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 

### Return type

[**ARRAY[ConnectDto]**](ConnectDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_attributes**
> validate_attributes(uuid => $uuid, function_group => $function_group, kind => $kind, request_attribute_dto => $request_attribute_dto)

Validate Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ConnectorManagementApi;
my $api_instance = CZERTAINLY::ConnectorManagementApi->new(
);

my $uuid = "uuid_example"; # string | Connector UUID
my $function_group = "function_group_example"; # string | Function Group name
my $kind = "kind_example"; # string | Kind
my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_attributes(uuid => $uuid, function_group => $function_group, kind => $kind, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ConnectorManagementApi->validate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Connector UUID | 
 **function_group** | **string**| Function Group name | 
 **kind** | **string**| Kind | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

