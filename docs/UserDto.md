# CZERTAINLY::Object::UserDto

## Load the model package
```perl
use CZERTAINLY::Object::UserDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the User | 
**username** | **string** | Username of the user | 
**first_name** | **string** | First name of the user | [optional] 
**last_name** | **string** | Last name of the user | [optional] 
**email** | **string** | Email of the user | [optional] 
**description** | **string** | Description of the user | [optional] 
**groups** | [**ARRAY[NameAndUuidDto]**](NameAndUuidDto.md) | Groups of the user | 
**enabled** | **boolean** | Status of the user. True &#x3D; Enabled, False &#x3D; Disabled | 
**system_user** | **boolean** | Is System user. True &#x3D; Yes, False &#x3D; No | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


