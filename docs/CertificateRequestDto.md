# WWW::OpenAPIClient::Object::CertificateRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CertificateRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate_type** | [**CertificateType**](CertificateType.md) |  | [optional] 
**certificate_request_format** | [**CertificateRequestFormat**](CertificateRequestFormat.md) |  | [optional] 
**public_key_algorithm** | **string** | Public key algorithm | 
**signature_algorithm** | **string** | Certificate signature algorithm | 
**content** | **string** | Certificate request content | 
**common_name** | **string** | Certificate common name | 
**subject_dn** | **string** | Subject DN of the Certificate | 
**subject_alternative_names** | **HASH[string,object]** | Subject alternative names | [optional] 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | CSR Attributes | [optional] 
**signature_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Signature Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


