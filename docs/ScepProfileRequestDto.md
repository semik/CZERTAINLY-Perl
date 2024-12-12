# CZERTAINLY::Object::ScepProfileRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ScepProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | Description of the SCEP Profile | [optional] 
**ra_profile_uuid** | **string** | RA Profile UUID | [optional] 
**issue_certificate_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to issue Certificate | 
**ca_certificate_uuid** | **string** | UUID of the Certificate to be used as CA Certificate for SCEP Requests | 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 
**renewal_threshold** | **int** | Minimum expiry days to allow renewal of certificate. Empty or the value &#39;0&#39; will be considered as null and half life of the certificate validity will be considered for the protocol | [optional] 
**include_ca_certificate** | **boolean** | Include CA Certificate in the SCEP Message response | [optional] [default to false]
**include_ca_certificate_chain** | **boolean** | Include CA Certificate Chain in the SCEP Message response | [optional] [default to false]
**challenge_password** | **string** | Challenge Password for the SCEP Request | [optional] 
**enable_intune** | **boolean** | Status of Intune | [optional] 
**intune_tenant** | **string** | Intune Tenant | [optional] 
**intune_application_id** | **string** | Intune Application ID | [optional] 
**intune_application_key** | **string** | Intune Application Key | [optional] 
**name** | **string** | Name of the SCEP Profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


