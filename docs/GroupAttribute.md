# WWW::OpenAPIClient::Object::GroupAttribute

## Load the model package
```perl
use WWW::OpenAPIClient::Object::GroupAttribute;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Attribute for unique identification | 
**name** | **string** | Name of the Attribute that is used for identification | 
**description** | **string** | Optional description of the Attribute, should contain helper text on what is expected | [optional] 
**content** | [**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md) | List of all different types of attributes | [optional] 
**type** | [**AttributeType**](AttributeType.md) |  | 
**attribute_callback** | [**AttributeCallback**](AttributeCallback.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


