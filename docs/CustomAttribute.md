# WWW::OpenAPIClient::Object::CustomAttribute

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CustomAttribute;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Attribute for unique identification | 
**name** | **string** | Name of the Attribute that is used for identification | 
**description** | **string** | Optional description of the Attribute, should contain helper text on what is expected | [optional] 
**content** | [**ARRAY[BaseAttributeContentDto]**](BaseAttributeContentDto.md) | Content of the Attribute | [optional] 
**type** | [**AttributeType**](AttributeType.md) |  | 
**content_type** | [**AttributeContentType**](AttributeContentType.md) |  | 
**properties** | [**CustomAttributeProperties**](CustomAttributeProperties.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


