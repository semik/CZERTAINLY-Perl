# WWW::OpenAPIClient::WorkflowTriggersManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::WorkflowTriggersManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_trigger**](WorkflowTriggersManagementApi.md#create_trigger) | **POST** /v1/workflows/triggers | Create Trigger
[**delete_trigger**](WorkflowTriggersManagementApi.md#delete_trigger) | **DELETE** /v1/workflows/triggers/{triggerUuid} | Delete Trigger
[**get_trigger**](WorkflowTriggersManagementApi.md#get_trigger) | **GET** /v1/workflows/triggers/{triggerUuid} | Get Trigger details
[**get_trigger_history**](WorkflowTriggersManagementApi.md#get_trigger_history) | **GET** /v1/workflows/triggers/{triggerUuid}/history/{associationObjectUuid} | Get Trigger History
[**get_trigger_history_summary**](WorkflowTriggersManagementApi.md#get_trigger_history_summary) | **GET** /v1/workflows/triggers/history/{associationObjectUuid} | Get Trigger History Summary
[**list_triggers**](WorkflowTriggersManagementApi.md#list_triggers) | **GET** /v1/workflows/triggers | List Triggers
[**update_trigger**](WorkflowTriggersManagementApi.md#update_trigger) | **PUT** /v1/workflows/triggers/{triggerUuid} | Update Trigger


# **create_trigger**
> TriggerDetailDto create_trigger(trigger_request_dto => $trigger_request_dto)

Create Trigger

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $trigger_request_dto = WWW::OpenAPIClient::Object::TriggerRequestDto->new(); # TriggerRequestDto | 

eval {
    my $result = $api_instance->create_trigger(trigger_request_dto => $trigger_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->create_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger_request_dto** | [**TriggerRequestDto**](TriggerRequestDto.md)|  | 

### Return type

[**TriggerDetailDto**](TriggerDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_trigger**
> delete_trigger(trigger_uuid => $trigger_uuid)

Delete Trigger

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $trigger_uuid = "trigger_uuid_example"; # string | Trigger UUID

eval {
    $api_instance->delete_trigger(trigger_uuid => $trigger_uuid);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->delete_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger_uuid** | **string**| Trigger UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trigger**
> TriggerDetailDto get_trigger(trigger_uuid => $trigger_uuid)

Get Trigger details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $trigger_uuid = "trigger_uuid_example"; # string | Trigger UUID

eval {
    my $result = $api_instance->get_trigger(trigger_uuid => $trigger_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->get_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger_uuid** | **string**| Trigger UUID | 

### Return type

[**TriggerDetailDto**](TriggerDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trigger_history**
> ARRAY[TriggerHistoryDto] get_trigger_history(trigger_uuid => $trigger_uuid, association_object_uuid => $association_object_uuid)

Get Trigger History

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $trigger_uuid = "trigger_uuid_example"; # string | Trigger UUID
my $association_object_uuid = "association_object_uuid_example"; # string | Trigger Association Object UUID

eval {
    my $result = $api_instance->get_trigger_history(trigger_uuid => $trigger_uuid, association_object_uuid => $association_object_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->get_trigger_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger_uuid** | **string**| Trigger UUID | 
 **association_object_uuid** | **string**| Trigger Association Object UUID | 

### Return type

[**ARRAY[TriggerHistoryDto]**](TriggerHistoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_trigger_history_summary**
> TriggerHistorySummaryDto get_trigger_history_summary(association_object_uuid => $association_object_uuid)

Get Trigger History Summary

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $association_object_uuid = "association_object_uuid_example"; # string | Trigger Association Object UUID

eval {
    my $result = $api_instance->get_trigger_history_summary(association_object_uuid => $association_object_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->get_trigger_history_summary: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_object_uuid** | **string**| Trigger Association Object UUID | 

### Return type

[**TriggerHistorySummaryDto**](TriggerHistorySummaryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_triggers**
> ARRAY[TriggerDto] list_triggers(resource => $resource, event_resource => $event_resource)

List Triggers

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $resource = new WWW::OpenAPIClient.Resource(); # Resource | 
my $event_resource = new WWW::OpenAPIClient.Resource(); # Resource | 

eval {
    my $result = $api_instance->list_triggers(resource => $resource, event_resource => $event_resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->list_triggers: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)|  | [optional] 
 **event_resource** | [**Resource**](.md)|  | [optional] 

### Return type

[**ARRAY[TriggerDto]**](TriggerDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_trigger**
> TriggerDetailDto update_trigger(trigger_uuid => $trigger_uuid, update_trigger_request_dto => $update_trigger_request_dto)

Update Trigger

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::WorkflowTriggersManagementApi;
my $api_instance = WWW::OpenAPIClient::WorkflowTriggersManagementApi->new(
);

my $trigger_uuid = "trigger_uuid_example"; # string | Trigger UUID
my $update_trigger_request_dto = WWW::OpenAPIClient::Object::UpdateTriggerRequestDto->new(); # UpdateTriggerRequestDto | 

eval {
    my $result = $api_instance->update_trigger(trigger_uuid => $trigger_uuid, update_trigger_request_dto => $update_trigger_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowTriggersManagementApi->update_trigger: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger_uuid** | **string**| Trigger UUID | 
 **update_trigger_request_dto** | [**UpdateTriggerRequestDto**](UpdateTriggerRequestDto.md)|  | 

### Return type

[**TriggerDetailDto**](TriggerDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

