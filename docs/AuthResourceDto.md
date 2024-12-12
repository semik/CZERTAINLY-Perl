# CZERTAINLY::Object::AuthResourceDto

## Load the model package
```perl
use CZERTAINLY::Object::AuthResourceDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | [**Resource**](Resource.md) |  | 
**display_name** | **string** | Resource label | 
**list_objects_endpoint** | **string** | Listing Endpoint | [optional] 
**object_access** | **boolean** | If resource has Object access permissions. True &#x3D; Yes, False &#x3D; No | 
**actions** | [**ARRAY[ActionDto]**](ActionDto.md) | List of Actions for the Resource | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


