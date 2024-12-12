# WWW::OpenAPIClient::Object::ConnectorDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ConnectorDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**function_groups** | [**ARRAY[FunctionGroupDto]**](FunctionGroupDto.md) | List of Function Groups implemented by the Connector | 
**url** | **string** | URL of the Connector | 
**auth_type** | [**AuthType**](AuthType.md) |  | 
**auth_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes for the authentication type | [optional] 
**status** | [**ConnectorStatus**](ConnectorStatus.md) |  | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


