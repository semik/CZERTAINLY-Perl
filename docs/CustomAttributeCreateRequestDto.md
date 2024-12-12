# CZERTAINLY::Object::CustomAttributeCreateRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::CustomAttributeCreateRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Attribute | 
**content_type** | [**AttributeContentType**](AttributeContentType.md) |  | 
**description** | **string** | Attribute description | [optional] 
**label** | **string** | Friendly name of the the Attribute | 
**visible** | **boolean** | Boolean determining if the Attribute is visible and can be displayed, otherwise it should be hidden to the user. | [optional] [default to true]
**group** | **string** | Group of the Attribute, used for the logical grouping of the Attribute | [optional] 
**required** | **boolean** | Boolean determining if the Attribute is required. If true, the Attribute must be provided. | [optional] [default to false]
**read_only** | **boolean** | Boolean determining if the Attribute is read only. If true, the Attribute content cannot be changed. | [optional] [default to false]
**list** | **boolean** | Boolean determining if the Attribute contains list of values in the content | [optional] [default to false]
**multi_select** | **boolean** | Boolean determining if the Attribute can have multiple values | [optional] [default to false]
**content** | [**ARRAY[BaseAttributeContentDto]**](BaseAttributeContentDto.md) | Predefined content for the attribute if needed. The content of the Attribute must satisfy the type | [optional] 
**resources** | [**ARRAY[Resource]**](Resource.md) | List of resource to be associated with the custom attribute | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


