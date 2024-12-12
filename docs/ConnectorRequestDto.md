# CZERTAINLY::Object::ConnectorRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ConnectorRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Connector | 
**url** | **string** | URL of the Connector to connect | 
**auth_type** | [**AuthType**](AuthType.md) |  | 
**auth_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of authentication Attributes. Required if the authentication type is not NONE | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


