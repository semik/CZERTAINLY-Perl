# WWW::OpenAPIClient::Object::CertificateInLocationDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CertificateInLocationDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate_uuid** | **string** | UUID of the Certificate | 
**state** | [**CertificateState**](CertificateState.md) |  | 
**validation_status** | [**CertificateValidationStatus**](CertificateValidationStatus.md) |  | 
**common_name** | **string** | Common Name of the Subject DN field of the Certificate | 
**serial_number** | **string** | Serial number in HEX of the Certificate | 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Metadata of the Certificate in Location | [optional] 
**push_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Applied push attributes | [optional] 
**csr_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Applied issue attributes | [optional] 
**with_key** | **boolean** | If the Certificate in Location has associated private key | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


