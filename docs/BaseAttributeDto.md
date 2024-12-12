# CZERTAINLY::Object::BaseAttributeDto

## Load the model package
```perl
use CZERTAINLY::Object::BaseAttributeDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Attribute for unique identification | 
**name** | **string** | Name of the Attribute that is used for identification | 
**description** | **string** | Optional description of the Attribute, should contain helper text on what is expected | [optional] 
**type** | [**AttributeType**](AttributeType.md) |  | 
**content** | **object** | Content of the Attribute | [optional] 
**content_type** | [**AttributeContentType**](AttributeContentType.md) |  | 
**properties** | [**CustomAttributeProperties**](CustomAttributeProperties.md) |  | 
**constraints** | [**ARRAY[BaseAttributeConstraint]**](BaseAttributeConstraint.md) | Optional regular expressions and constraints used for validating the Attribute content | [optional] 
**attribute_callback** | [**AttributeCallback**](AttributeCallback.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


