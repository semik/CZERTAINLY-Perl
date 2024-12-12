# CZERTAINLY::Object::TriggerRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::TriggerRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the trigger | 
**description** | **string** | Description of the trigger | [optional] 
**type** | [**TriggerType**](TriggerType.md) |  | 
**resource** | [**Resource**](Resource.md) |  | 
**ignore_trigger** | **boolean** | Flag if to ignore object when trigger rules are matched and do not perform any actions and stop evaluating other triggers. Based on context could have other implications to object processing. If ignore is set, trigger does not have any actions. | 
**event** | **string** | Event that should fire trigger | [optional] 
**event_resource** | [**Resource**](Resource.md) |  | [optional] 
**rules_uuids** | **ARRAY[string]** | List of UUIDs of existing rules to add to the trigger | [optional] 
**actions_uuids** | **ARRAY[string]** | List of UUIDs of existing actions to add to the trigger | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


