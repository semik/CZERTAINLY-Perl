# WWW::OpenAPIClient::Object::RaProfileAcmeDetailResponseDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::RaProfileAcmeDetailResponseDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**acme_available** | **boolean** | ACME availability flag - true &#x3D; yes; false &#x3D; no | 
**directory_url** | **string** | ACME Directory URL | [optional] 
**issue_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to issue Certificate | [optional] 
**revoke_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to revoke Certificate | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


