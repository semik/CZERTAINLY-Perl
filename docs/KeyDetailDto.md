# CZERTAINLY::Object::KeyDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::KeyDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the Key | 
**creation_time** | **DATE_TIME** | Creation time of the Key. If the key is discovered from the connector, then it will be returned | 
**token_profile_uuid** | **string** | UUID of the Token Profile | [optional] 
**token_profile_name** | **string** | Name of the Token Profile | [optional] 
**token_instance_uuid** | **string** | Token Instance UUID | 
**token_instance_name** | **string** | Token Instance Name | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Custom Attributes for the Cryptographic Key | [optional] 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Attributes for the Cryptographic Key | 
**owner** | **string** | Owner of the Key | [optional] 
**owner_uuid** | **string** | UUID of the owner of the Key | [optional] 
**groups** | [**ARRAY[GroupDto]**](GroupDto.md) | Groups associated to the key | [optional] 
**items** | [**ARRAY[KeyItemDetailDto]**](KeyItemDetailDto.md) | Key Objects | 
**associations** | [**ARRAY[KeyAssociationDto]**](KeyAssociationDto.md) | List of associated items | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


