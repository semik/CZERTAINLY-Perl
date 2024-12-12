# WWW::OpenAPIClient::Object::TriggerHistoryObjectSummaryDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TriggerHistoryObjectSummaryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object_uuid** | **string** | UUID of the object that the trigger has been evaluated on. | [optional] 
**reference_object_uuid** | **string** | Reference UUID of the object that the trigger has been evaluated on. | [optional] 
**matched** | **boolean** | Was matched at least by one trigger. | 
**ignored** | **boolean** | Was matched by ignore trigger. | 
**triggers** | [**ARRAY[TriggerHistoryObjectTriggerSummaryDto]**](TriggerHistoryObjectTriggerSummaryDto.md) | List of records for each trigger that has been evaluated. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


