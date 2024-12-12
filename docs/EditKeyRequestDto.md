# CZERTAINLY::Object::EditKeyRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::EditKeyRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token_profile_uuid** | **string** | UUID of the token profile | 
**name** | **string** | Name of the Cryptographic Key | 
**description** | **string** | Description of the Cryptographic Key | 
**owner_uuid** | **string** | Key Owner UUID | [optional] 
**group_uuids** | **ARRAY[string]** | UUIDs of the groups to associate with key | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


