# WWW::OpenAPIClient::Object::ClientCertificateRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ClientCertificateRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ra_profile_uuid** | **string** | RA Profile UUID. Required if CSR is not uploaded | 
**source_certificate_uuid** | **string** | Source certificate UUID to specify in case of renew/rekey operation | [optional] 
**csr_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of attributes to create CSR. Required if CSR is not provided | [optional] 
**signature_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of attributes to sign the CSR | [optional] 
**request** | **string** | Certificate signing request encoded as Base64 string | [optional] 
**format** | [**CertificateRequestFormat**](CertificateRequestFormat.md) |  | [optional] 
**token_profile_uuid** | **string** | Token Profile UUID. Required if CSR is not uploaded | [optional] 
**key_uuid** | **string** | Key UUID. Required if CSR is not uploaded | [optional] 
**issue_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of RA Profile related Attributes to issue Certificate | 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


