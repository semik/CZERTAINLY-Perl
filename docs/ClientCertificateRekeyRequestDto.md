# CZERTAINLY::Object::ClientCertificateRekeyRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ClientCertificateRekeyRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**replace_in_locations** | **boolean** | True to replace renewed certificate in the associated locations | [optional] [default to false]
**request** | **string** | Certificate signing request encoded as Base64 string. If not provided, CSR attributes will be used | [optional] 
**format** | [**CertificateRequestFormat**](CertificateRequestFormat.md) |  | [optional] 
**key_uuid** | **string** | Key UUID | 
**token_profile_uuid** | **string** | Token Profile UUID | 
**signature_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | Signature Attributes. If not provided, existing attributes will be used to generate the new CSR | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


