# CZERTAINLY::Object::RaProfileDto

## Load the model package
```perl
use CZERTAINLY::Object::RaProfileDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of RA Profile | [optional] 
**authority_instance_uuid** | **string** | UUID of Authority provider | 
**authority_instance_name** | **string** | Name of Authority instance | 
**legacy_authority** | **boolean** | Has Authority of legacy authority provider | [optional] 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of RA Profiles attributes | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**enabled_protocols** | **ARRAY[string]** | List of protocols enabled | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


