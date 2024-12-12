# CZERTAINLY::Object::ScheduledJobDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::ScheduledJobDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the scheduled job | 
**job_name** | **string** | Name of the scheduled job | 
**job_type** | **string** | Type of scheduled job (job processor name) | 
**cron_expression** | **string** | CRON expression representing configuration of pattern how to run scheduled job | 
**enabled** | **boolean** | Status of the scheduled job. True &#x3D; Enabled, False &#x3D; Disabled | 
**one_time** | **boolean** | Is scheduled job triggered only once | 
**system** | **boolean** | Is system scheduled job | 
**last_execution_status** | [**SchedulerJobExecutionStatus**](SchedulerJobExecutionStatus.md) |  | 
**user_uuid** | **string** |  | [optional] 
**object_data** | **object** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


