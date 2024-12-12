# WWW::OpenAPIClient::Object::TokenProfileDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TokenProfileDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of Token Profile | [optional] 
**token_instance_uuid** | **string** | UUID of Token Instance | 
**token_instance_name** | **string** | Name of Token instance | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Token Profile attributes | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**token_instance_status** | [**TokenInstanceStatus**](TokenInstanceStatus.md) |  | 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**usages** | [**ARRAY[KeyUsage]**](KeyUsage.md) | Usages for the Keys assoiated to the profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


