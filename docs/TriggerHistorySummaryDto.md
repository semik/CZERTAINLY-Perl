# CZERTAINLY::Object::TriggerHistorySummaryDto

## Load the model package
```perl
use CZERTAINLY::Object::TriggerHistorySummaryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**association_resource** | [**Resource**](Resource.md) |  | 
**association_object_uuid** | **string** | UUID of the object associated with triggers. | 
**objects_resource** | [**Resource**](Resource.md) |  | 
**objects_evaluated** | **int** | Number of objects evaluated. | 
**objects_matched** | **int** | Number of objects matched at least by one trigger. | 
**objects_ignored** | **int** | Number of objects matched by ignore triggers. | 
**objects** | [**ARRAY[TriggerHistoryObjectSummaryDto]**](TriggerHistoryObjectSummaryDto.md) | List of history of objects that triggers has been evaluated on. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


