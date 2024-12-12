# CZERTAINLY::Object::DataAttributeProperties

## Load the model package
```perl
use CZERTAINLY::Object::DataAttributeProperties;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **string** | Friendly name of the the Attribute | 
**visible** | **boolean** | Boolean determining if the Attribute is visible and can be displayed, otherwise it should be hidden to the user. | [default to true]
**group** | **string** | Group of the Attribute, used for the logical grouping of the Attribute | [optional] 
**required** | **boolean** | Boolean determining if the Attribute is required. If true, the Attribute must be provided. | [default to false]
**read_only** | **boolean** | Boolean determining if the Attribute is read only. If true, the Attribute content cannot be changed. | [default to false]
**list** | **boolean** | Boolean determining if the Attribute contains list of values in the content | [default to false]
**multi_select** | **boolean** | Boolean determining if the Attribute can have multiple values | [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


