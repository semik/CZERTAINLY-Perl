# WWW::OpenAPIClient::Object::ConnectorUpdateRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ConnectorUpdateRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | URL of the Connector to connect | [optional] 
**auth_type** | [**AuthType**](AuthType.md) |  | [optional] 
**auth_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of authentication Attributes. Required if the authentication type is not NONE | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


