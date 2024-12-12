# CZERTAINLY::Object::AddTokenProfileRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::AddTokenProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Token Profile name | 
**description** | **string** | Token Profile description | [optional] 
**attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to create Token Profile | 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | [optional] [default to false]
**usage** | [**ARRAY[KeyUsage]**](KeyUsage.md) | Usages for the Key | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


