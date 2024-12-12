# WWW::OpenAPIClient::Object::GlobalMetadataDefinitionDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::GlobalMetadataDefinitionDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Attribute | 
**name** | **string** | Name of the Attribute | 
**content_type** | [**AttributeContentType**](AttributeContentType.md) |  | 
**description** | **string** | Attribute description | 
**enabled** | **boolean** | Boolean determining if the Attribute is enabled. Required only for Custom Attribute | [optional] 
**type** | [**AttributeType**](AttributeType.md) |  | 
**label** | **string** | Friendly name of the the Attribute | 
**visible** | **boolean** | Boolean determining if the Attribute is visible and can be displayed, otherwise it should be hidden to the user. | [optional] [default to true]
**group** | **string** | Group of the Attribute, used for the logical grouping of the Attribute | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


