# CZERTAINLY::Object::RoleDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::RoleDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the user | [optional] 
**email** | **string** | Role contact email | [optional] 
**system_role** | **boolean** | Is system role. True &#x3D; Yes, False &#x3D; No | 
**users** | [**ARRAY[UserDto]**](UserDto.md) | List of Users with the role | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


