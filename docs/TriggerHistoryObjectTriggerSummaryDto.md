# CZERTAINLY::Object::TriggerHistoryObjectTriggerSummaryDto

## Load the model package
```perl
use CZERTAINLY::Object::TriggerHistoryObjectTriggerSummaryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**trigger_uuid** | **string** | UUID of the object that the trigger has been evaluated on. | 
**trigger_name** | **string** | Reference UUID of the object that the trigger has been evaluated on. | 
**triggered_at** | **DATE_TIME** | Time at which has the trigger been triggered | 
**message** | **string** | Additional message.  | [optional] 
**records** | [**ARRAY[TriggerHistoryRecordDto]**](TriggerHistoryRecordDto.md) | List of records for each action that has not been performed and each condition that has not been evaluated. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


