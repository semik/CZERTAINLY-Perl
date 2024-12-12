# CZERTAINLY::Object::CmpProfileDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::CmpProfileDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**variant** | **string** | Variant of the CMP Profile | 
**description** | **string** | CMP Profile description | [optional] 
**ra_profile** | [**SimplifiedRaProfileDto**](SimplifiedRaProfileDto.md) |  | [optional] 
**cmp_url** | **string** | CMP URL | [optional] 
**issue_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to issue a Certificate for the associated RA Profile | [optional] 
**revoke_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to revoke a Certificate for the associated RA Profile | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes for CMP Profile | [optional] 
**request_protection_method** | [**ProtectionMethod**](ProtectionMethod.md) |  | 
**response_protection_method** | [**ProtectionMethod**](ProtectionMethod.md) |  | 
**signing_certificate** | [**CertificateDto**](CertificateDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


