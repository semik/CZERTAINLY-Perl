# WWW::OpenAPIClient::Object::TriggerHistoryDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TriggerHistoryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**trigger_uuid** | **string** | UUID of the trigger. | 
**object_uuid** | **string** | UUID of the object that the trigger has been evaluated on. | [optional] 
**reference_object_uuid** | **string** | Reference UUID of the object that the trigger has been evaluated on. | [optional] 
**conditions_matched** | **boolean** | All conditions in the trigger have been matched. | 
**actions_performed** | **boolean** | All actions in the trigger have been performed. | 
**triggered_at** | **DATE_TIME** | Time at which has the trigger been triggered | 
**message** | **string** | Additional message.  | [optional] 
**records** | [**ARRAY[TriggerHistoryRecordDto]**](TriggerHistoryRecordDto.md) | List of records for each action that has not been performed and each condition that has not been evaluated. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


