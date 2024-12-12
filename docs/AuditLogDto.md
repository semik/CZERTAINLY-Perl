# CZERTAINLY::Object::AuditLogDto

## Load the model package
```perl
use CZERTAINLY::Object::AuditLogDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Audit log Id | 
**version** | **string** | Log schema version | 
**logged_at** | **DATE_TIME** | Time when the audit log is stored | 
**module** | [**Module**](Module.md) |  | 
**actor** | [**ActorRecord**](ActorRecord.md) |  | 
**source** | [**SourceRecord**](SourceRecord.md) |  | [optional] 
**resource** | [**ResourceRecord**](ResourceRecord.md) |  | 
**affiliated_resource** | [**ResourceRecord**](ResourceRecord.md) |  | [optional] 
**operation** | [**Operation**](Operation.md) |  | 
**operation_result** | [**OperationResult**](OperationResult.md) |  | 
**message** | **string** | Additional message | [optional] 
**operation_data** | **object** | Structured data dependent on resource and its operation | [optional] 
**additional_data** | **HASH[string,object]** | Additional data specific to event logged | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


