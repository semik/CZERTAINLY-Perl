# WWW::OpenAPIClient::Object::AttributeCallbackMapping

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AttributeCallbackMapping;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **string** | Name of the attribute whose value is to be used as value of path variable or request param or body field.It is optional and must be set only if value is not set. | [optional] 
**attribute_type** | [**AttributeType**](AttributeType.md) |  | [optional] 
**attribute_content_type** | [**AttributeContentType**](AttributeContentType.md) |  | [optional] 
**to** | **string** | Name of the path variable or request param or body field which is to be used to assign value of attribute | 
**targets** | [**ARRAY[AttributeValueTarget]**](AttributeValueTarget.md) | Set of targets for propagating value. | 
**value** | **object** | Static value to be propagated to targets. It is optional and is set only if the value is known at attribute creation time. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


