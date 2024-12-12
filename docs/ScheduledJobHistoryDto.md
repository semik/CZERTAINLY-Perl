# WWW::OpenAPIClient::Object::ScheduledJobHistoryDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ScheduledJobHistoryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_uuid** | **string** | Scheduled job UUID | [optional] 
**start_time** | **DATE_TIME** | Start time of triggered task | 
**end_time** | **DATE_TIME** | End time of triggered task | [optional] 
**status** | [**SchedulerJobExecutionStatus**](SchedulerJobExecutionStatus.md) |  | 
**result_message** | **string** | Message explaining result status | [optional] 
**result_object_type** | [**Resource**](Resource.md) |  | [optional] 
**result_object_identification** | **ARRAY[string]** | Result object identification (UUID) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


