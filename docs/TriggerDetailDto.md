# WWW::OpenAPIClient::Object::TriggerDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TriggerDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the trigger | [optional] 
**type** | [**TriggerType**](TriggerType.md) |  | 
**resource** | [**Resource**](Resource.md) |  | 
**ignore_trigger** | **boolean** | Flag if to ignore object when trigger rules are matched and do not perform any actions and stop evaluating other triggers. Based on context could have other implications to object processing. If ignore is set, trigger does not have any actions. | 
**event** | **string** | Event that should fire trigger | [optional] 
**event_resource** | [**Resource**](Resource.md) |  | [optional] 
**rules** | [**ARRAY[RuleDetailDto]**](RuleDetailDto.md) | List of Rules in the Rule Trigger | 
**actions** | [**ARRAY[ActionDetailDto]**](ActionDetailDto.md) | List of Action Groups in the Rule Trigger | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


