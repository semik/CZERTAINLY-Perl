# CZERTAINLY::Object::NotificationInstanceDto

## Load the model package
```perl
use CZERTAINLY::Object::NotificationInstanceDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Notification instance description | [optional] 
**connector_uuid** | **string** | UUID of Notification provider | 
**connector_name** | **string** | Name of Notification provider | 
**kind** | **string** | Notification Instance Kind | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Notification instance Attributes | 
**attribute_mappings** | [**ARRAY[AttributeMappingDto]**](AttributeMappingDto.md) | List of attribute mappings between mapping attributes and (recipient) custom attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


