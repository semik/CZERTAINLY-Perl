# CZERTAINLY::WorkflowRulesManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::WorkflowRulesManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_condition**](WorkflowRulesManagementApi.md#create_condition) | **POST** /v1/workflows/conditions | Create Condition
[**create_rule**](WorkflowRulesManagementApi.md#create_rule) | **POST** /v1/workflows/rules | Create Rule
[**delete_condition**](WorkflowRulesManagementApi.md#delete_condition) | **DELETE** /v1/workflows/conditions/{conditionUuid} | Delete Condition
[**delete_rule**](WorkflowRulesManagementApi.md#delete_rule) | **DELETE** /v1/workflows/rules/{ruleUuid} | Delete Rule
[**get_condition**](WorkflowRulesManagementApi.md#get_condition) | **GET** /v1/workflows/conditions/{conditionUuid} | Get Condition details
[**get_rule**](WorkflowRulesManagementApi.md#get_rule) | **GET** /v1/workflows/rules/{ruleUuid} | Get Rule details
[**list_conditions**](WorkflowRulesManagementApi.md#list_conditions) | **GET** /v1/workflows/conditions | List Conditions
[**list_rules**](WorkflowRulesManagementApi.md#list_rules) | **GET** /v1/workflows/rules | List Rules
[**update_condition**](WorkflowRulesManagementApi.md#update_condition) | **PUT** /v1/workflows/conditions/{conditionUuid} | Update Condition
[**update_rule**](WorkflowRulesManagementApi.md#update_rule) | **PUT** /v1/workflows/rules/{ruleUuid} | Update Rule


# **create_condition**
> ConditionDto create_condition(condition_request_dto => $condition_request_dto)

Create Condition

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $condition_request_dto = CZERTAINLY::Object::ConditionRequestDto->new(); # ConditionRequestDto | 

eval {
    my $result = $api_instance->create_condition(condition_request_dto => $condition_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->create_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_request_dto** | [**ConditionRequestDto**](ConditionRequestDto.md)|  | 

### Return type

[**ConditionDto**](ConditionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_rule**
> RuleDetailDto create_rule(rule_request_dto => $rule_request_dto)

Create Rule

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $rule_request_dto = CZERTAINLY::Object::RuleRequestDto->new(); # RuleRequestDto | 

eval {
    my $result = $api_instance->create_rule(rule_request_dto => $rule_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->create_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_request_dto** | [**RuleRequestDto**](RuleRequestDto.md)|  | 

### Return type

[**RuleDetailDto**](RuleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_condition**
> delete_condition(condition_uuid => $condition_uuid)

Delete Condition

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $condition_uuid = "condition_uuid_example"; # string | Condition UUID

eval {
    $api_instance->delete_condition(condition_uuid => $condition_uuid);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->delete_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_uuid** | **string**| Condition UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_rule**
> delete_rule(rule_uuid => $rule_uuid)

Delete Rule

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $rule_uuid = "rule_uuid_example"; # string | Rule UUID

eval {
    $api_instance->delete_rule(rule_uuid => $rule_uuid);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->delete_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_uuid** | **string**| Rule UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_condition**
> ConditionDto get_condition(condition_uuid => $condition_uuid)

Get Condition details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $condition_uuid = "condition_uuid_example"; # string | Condition UUID

eval {
    my $result = $api_instance->get_condition(condition_uuid => $condition_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->get_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_uuid** | **string**| Condition UUID | 

### Return type

[**ConditionDto**](ConditionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_rule**
> RuleDetailDto get_rule(rule_uuid => $rule_uuid)

Get Rule details

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $rule_uuid = "rule_uuid_example"; # string | Rule UUID

eval {
    my $result = $api_instance->get_rule(rule_uuid => $rule_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->get_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_uuid** | **string**| Rule UUID | 

### Return type

[**RuleDetailDto**](RuleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_conditions**
> ARRAY[ConditionDto] list_conditions(resource => $resource)

List Conditions

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $resource = new CZERTAINLY.Resource(); # Resource | 

eval {
    my $result = $api_instance->list_conditions(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->list_conditions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)|  | [optional] 

### Return type

[**ARRAY[ConditionDto]**](ConditionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_rules**
> ARRAY[RuleDto] list_rules(resource => $resource)

List Rules

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $resource = new CZERTAINLY.Resource(); # Resource | 

eval {
    my $result = $api_instance->list_rules(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->list_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)|  | [optional] 

### Return type

[**ARRAY[RuleDto]**](RuleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_condition**
> ConditionDto update_condition(condition_uuid => $condition_uuid, update_condition_request_dto => $update_condition_request_dto)

Update Condition

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $condition_uuid = "condition_uuid_example"; # string | Condition UUID
my $update_condition_request_dto = CZERTAINLY::Object::UpdateConditionRequestDto->new(); # UpdateConditionRequestDto | 

eval {
    my $result = $api_instance->update_condition(condition_uuid => $condition_uuid, update_condition_request_dto => $update_condition_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->update_condition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **condition_uuid** | **string**| Condition UUID | 
 **update_condition_request_dto** | [**UpdateConditionRequestDto**](UpdateConditionRequestDto.md)|  | 

### Return type

[**ConditionDto**](ConditionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_rule**
> RuleDetailDto update_rule(rule_uuid => $rule_uuid, update_rule_request_dto => $update_rule_request_dto)

Update Rule

### Example
```perl
use Data::Dumper;
use CZERTAINLY::WorkflowRulesManagementApi;
my $api_instance = CZERTAINLY::WorkflowRulesManagementApi->new(
);

my $rule_uuid = "rule_uuid_example"; # string | Rule UUID
my $update_rule_request_dto = CZERTAINLY::Object::UpdateRuleRequestDto->new(); # UpdateRuleRequestDto | 

eval {
    my $result = $api_instance->update_rule(rule_uuid => $rule_uuid, update_rule_request_dto => $update_rule_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling WorkflowRulesManagementApi->update_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule_uuid** | **string**| Rule UUID | 
 **update_rule_request_dto** | [**UpdateRuleRequestDto**](UpdateRuleRequestDto.md)|  | 

### Return type

[**RuleDetailDto**](RuleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

