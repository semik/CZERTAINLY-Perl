# CZERTAINLY::Object::KeyRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::KeyRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Cryptographic Key | 
**description** | **string** | Description of the Cryptographic Key | 
**group_uuids** | **ARRAY[string]** | UUIDs of the groups to associate with key | [optional] 
**attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to create a Key | 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | Custom Attributes for the key | [optional] 
**enabled** | **boolean** | Enabled status of created key. True &#x3D; Enabled, False &#x3D; Disabled | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


