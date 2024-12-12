# WWW::OpenAPIClient::Object::NotificationDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::NotificationDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Notification UUID | 
**message** | **string** | Notification message | 
**detail** | **string** | Notification message detail | [optional] 
**read_at** | **DATE_TIME** | Notification read date | [optional] 
**sent_at** | **DATE_TIME** | Notification sent date | 
**target_object_type** | [**Resource**](Resource.md) |  | [optional] 
**target_object_identification** | **ARRAY[string]** | Target object identification (UUID) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


