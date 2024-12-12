# CZERTAINLY::Object::LocationDto

## Load the model package
```perl
use CZERTAINLY::Object::LocationDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the Location | [optional] 
**entity_instance_uuid** | **string** | UUID of Entity instance | 
**entity_instance_name** | **string** | Name of Entity instance | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Location attributes | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**support_multiple_entries** | **boolean** | If the location supports multiple Certificates | [default to false]
**support_key_management** | **boolean** | If the location supports key management operations | [default to false]
**certificates** | [**ARRAY[CertificateInLocationDto]**](CertificateInLocationDto.md) | List of Certificates in Location | 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Location metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


