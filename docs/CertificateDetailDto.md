# WWW::OpenAPIClient::Object::CertificateDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CertificateDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Certificate | 
**common_name** | **string** | Certificate common name | 
**serial_number** | **string** | Certificate serial number | [optional] 
**issuer_common_name** | **string** | Certificate issuer common name | [optional] 
**issuer_dn** | **string** | Issuer DN of the Certificate | [optional] 
**subject_dn** | **string** | Subject DN of the Certificate | 
**not_before** | **DATE_TIME** | Certificate validity start date | [optional] 
**not_after** | **DATE_TIME** | Certificate expiration date | [optional] 
**public_key_algorithm** | **string** | Public key algorithm | 
**signature_algorithm** | **string** | Certificate signature algorithm | 
**key_size** | **int** | Certificate key size | 
**state** | [**CertificateState**](CertificateState.md) |  | 
**validation_status** | [**CertificateValidationStatus**](CertificateValidationStatus.md) |  | 
**ra_profile** | [**SimplifiedRaProfileDto**](SimplifiedRaProfileDto.md) |  | [optional] 
**fingerprint** | **string** | SHA256 fingerprint of the Certificate | [optional] 
**groups** | [**ARRAY[GroupDto]**](GroupDto.md) | Groups associated to the Certificate | [optional] 
**owner** | **string** | Certificate Owner | [optional] 
**owner_uuid** | **string** | Certificate Owner UUID | [optional] 
**certificate_type** | [**CertificateType**](CertificateType.md) |  | [optional] 
**issuer_serial_number** | **string** | Serial number of the issuer | [optional] 
**compliance_status** | [**ComplianceStatus**](ComplianceStatus.md) |  | [optional] 
**issuer_certificate_uuid** | **string** | UUID of the issuer certificate | [optional] 
**private_key_availability** | **boolean** | Private Key Availability | 
**trusted_ca** | **boolean** | Indicator whether CA is marked as trusted, set to null if certificate is not CA | 
**extended_key_usage** | **ARRAY[string]** | Extended key usages | [optional] 
**key_usage** | **ARRAY[string]** | Key usages | 
**subject_type** | [**CertificateSubjectType**](CertificateSubjectType.md) |  | 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Certificate metadata | [optional] 
**certificate_content** | **string** | Base64 encoded Certificate content | 
**subject_alternative_names** | **HASH[string,object]** | Subject alternative names | [optional] 
**locations** | [**ARRAY[LocationDto]**](LocationDto.md) | Locations associated to the Certificate | [optional] 
**non_compliant_rules** | [**ARRAY[CertificateComplianceResultDto]**](CertificateComplianceResultDto.md) | Certificate compliance check result | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**key** | [**KeyDto**](KeyDto.md) |  | [optional] 
**certificate_request** | [**CertificateRequestDto**](CertificateRequestDto.md) |  | [optional] 
**source_certificate_uuid** | **string** | Source certificate UUID | [optional] 
**issue_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of issue attributes | [optional] 
**revoke_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of revoke attributes | [optional] 
**related_certificates** | [**ARRAY[CertificateDto]**](CertificateDto.md) | List of related certificates | [optional] 
**protocol_info** | [**CertificateProtocolDto**](CertificateProtocolDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


