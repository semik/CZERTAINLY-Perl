# WWW::OpenAPIClient::Object::CredentialDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CredentialDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**kind** | **string** | Credential Kind | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Credential Attributes | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**connector_uuid** | **string** | UUID of Credential provider Connector | 
**connector_name** | **string** | Name of Credential provider Connector | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


