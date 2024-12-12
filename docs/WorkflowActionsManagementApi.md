# CZERTAINLY::WorkflowActionsManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::WorkflowActionsManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_action**](WorkflowActionsManagementApi.md#create_action) | **POST** /v1/workflows/actions | Create Action
[**create_execution**](WorkflowActionsManagementApi.md#create_execution) | **POST** /v1/workflows/executions | Create Execution
[**delete_action**](WorkflowActionsManagementApi.md#delete_action) | **DELETE** /v1/workflows/actions/{actionUuid} | Delete Action
[**delete_execution**](WorkflowActionsManagementApi.md#delete_execution) | **DELETE** /v1/workflows/executions/{executionUuid} | Delete Execution
[**get_action**](WorkflowActionsManagementApi.md#get_action) | **GET** /v1/workflows/actions/{actionUuid} | Get Action Details
[**get_execution**](WorkflowActionsManagementApi.md#get_execution) | **GET** /v1/workflows/executions/{executionUuid} | Get Execution Details
[**list_actions**](WorkflowActionsManagementApi.md#list_actions) | **GET** /v1/workflows/actions | List Actions
[**list_executions**](WorkflowActionsManagementApi.md#list_executions) | **GET** /v1/workflows/executions | List executions
[**update_action**](WorkflowActionsManagementApi.md#update_action) | **PUT** /v1/workflows/actions/{actionUuid} | Update Action
[**update_execution**](WorkflowActionsManagementApi.md#update_execution) | **PUT** /v1/workflows/executions/{executionUuid} | Update Execution


# **create_action**
> ActionDetailDto create_action(action_request_dto => $action_request_dto)

Create Action

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $action_request_dto = CZERTAINLY::Object::ActionRequestDto->new(); # ActionRequestDto | 

eval {
    my $result = $api_instance->create_action(action_request_dto => $action_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->create_action: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action_request_dto** | [**ActionRequestDto**](ActionRequestDto.md)|  | 

### Return type

[**ActionDetailDto**](ActionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_execution**
> ExecutionDto create_execution(execution_request_dto => $execution_request_dto)

Create Execution

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $execution_request_dto = CZERTAINLY::Object::ExecutionRequestDto->new(); # ExecutionRequestDto | 

eval {
    my $result = $api_instance->create_execution(execution_request_dto => $execution_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->create_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution_request_dto** | [**ExecutionRequestDto**](ExecutionRequestDto.md)|  | 

### Return type

[**ExecutionDto**](ExecutionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_action**
> delete_action(action_uuid => $action_uuid)

Delete Action

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $action_uuid = "action_uuid_example"; # string | Action UUID

eval {
    $api_instance->delete_action(action_uuid => $action_uuid);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->delete_action: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action_uuid** | **string**| Action UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_execution**
> delete_execution(execution_uuid => $execution_uuid)

Delete Execution

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $execution_uuid = "execution_uuid_example"; # string | Execution UUID

eval {
    $api_instance->delete_execution(execution_uuid => $execution_uuid);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->delete_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution_uuid** | **string**| Execution UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_action**
> ActionDetailDto get_action(action_uuid => $action_uuid)

Get Action Details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $action_uuid = "action_uuid_example"; # string | Action UUID

eval {
    my $result = $api_instance->get_action(action_uuid => $action_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->get_action: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action_uuid** | **string**| Action UUID | 

### Return type

[**ActionDetailDto**](ActionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_execution**
> ExecutionDto get_execution(execution_uuid => $execution_uuid)

Get Execution Details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $execution_uuid = "execution_uuid_example"; # string | Execution UUID

eval {
    my $result = $api_instance->get_execution(execution_uuid => $execution_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->get_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution_uuid** | **string**| Execution UUID | 

### Return type

[**ExecutionDto**](ExecutionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_actions**
> ARRAY[ActionDto] list_actions(resource => $resource)

List Actions

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $resource = new CZERTAINLY.Resource(); # Resource | 

eval {
    my $result = $api_instance->list_actions(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->list_actions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)|  | [optional] 

### Return type

[**ARRAY[ActionDto]**](ActionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_executions**
> ARRAY[ExecutionDto] list_executions(resource => $resource)

List executions

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $resource = new CZERTAINLY.Resource(); # Resource | 

eval {
    my $result = $api_instance->list_executions(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->list_executions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)|  | [optional] 

### Return type

[**ARRAY[ExecutionDto]**](ExecutionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_action**
> ActionDetailDto update_action(action_uuid => $action_uuid, update_action_request_dto => $update_action_request_dto)

Update Action

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $action_uuid = "action_uuid_example"; # string | Action UUID
my $update_action_request_dto = CZERTAINLY::Object::UpdateActionRequestDto->new(); # UpdateActionRequestDto | 

eval {
    my $result = $api_instance->update_action(action_uuid => $action_uuid, update_action_request_dto => $update_action_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->update_action: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **action_uuid** | **string**| Action UUID | 
 **update_action_request_dto** | [**UpdateActionRequestDto**](UpdateActionRequestDto.md)|  | 

### Return type

[**ActionDetailDto**](ActionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_execution**
> ExecutionDto update_execution(execution_uuid => $execution_uuid, update_execution_request_dto => $update_execution_request_dto)

Update Execution

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowActionsManagementApi;
my $api_instance = CZERTAINLY::WorkflowActionsManagementApi->new(
);

my $execution_uuid = "execution_uuid_example"; # string | Execution UUID
my $update_execution_request_dto = CZERTAINLY::Object::UpdateExecutionRequestDto->new(); # UpdateExecutionRequestDto | 

eval {
    my $result = $api_instance->update_execution(execution_uuid => $execution_uuid, update_execution_request_dto => $update_execution_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowActionsManagementApi->update_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution_uuid** | **string**| Execution UUID | 
 **update_execution_request_dto** | [**UpdateExecutionRequestDto**](UpdateExecutionRequestDto.md)|  | 

### Return type

[**ExecutionDto**](ExecutionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

