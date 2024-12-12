# CZERTAINLY::Object::SearchFieldDataDto

## Load the model package
```perl
use CZERTAINLY::Object::SearchFieldDataDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_identifier** | **string** | Identifier of field to search | 
**field_label** | **string** | Label for the field | 
**type** | [**FilterFieldType**](FilterFieldType.md) |  | 
**conditions** | [**ARRAY[FilterConditionOperator]**](FilterConditionOperator.md) | List of available conditions for the field | 
**platform_enum** | [**PlatformEnum**](PlatformEnum.md) |  | [optional] 
**attribute_content_type** | [**AttributeContentType**](AttributeContentType.md) |  | [optional] 
**value** | **object** | Available values for the field | [optional] 
**multi_value** | **boolean** | Multivalue flag. true &#x3D; yes, false &#x3D; no | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


