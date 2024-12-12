# WWW::OpenAPIClient::Object::DataAttribute

## Load the model package
```perl
use WWW::OpenAPIClient::Object::DataAttribute;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Attribute for unique identification | 
**name** | **string** | Name of the Attribute that is used for identification | 
**description** | **string** | Optional description of the Attribute, should contain helper text on what is expected | [optional] 
**type** | [**AttributeType**](AttributeType.md) |  | 
**content_type** | [**AttributeContentType**](AttributeContentType.md) |  | 
**properties** | [**DataAttributeProperties**](DataAttributeProperties.md) |  | 
**constraints** | [**ARRAY[BaseAttributeConstraint]**](BaseAttributeConstraint.md) | Optional regular expressions and constraints used for validating the Attribute content | [optional] 
**attribute_callback** | [**AttributeCallback**](AttributeCallback.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


