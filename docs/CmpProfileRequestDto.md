# WWW::OpenAPIClient::Object::CmpProfileRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::CmpProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | Description of the CMP Profile | [optional] 
**ra_profile_uuid** | **string** | RA Profile UUID that the CMP Profile is associated with | [optional] 
**issue_certificate_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to issue Certificate for the associated RA Profile. Required when raProfileUuid is provided | [optional] 
**revoke_certificate_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to revoke Certificate for the associated RA Profile. Required when raProfileUuid is provided | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes for CMP Profile | [optional] 
**request_protection_method** | [**ProtectionMethod**](ProtectionMethod.md) |  | 
**response_protection_method** | [**ProtectionMethod**](ProtectionMethod.md) |  | 
**shared_secret** | **string** | Shared secret for the CMP Request. Required when requestProtectionMethod is sharedSecret | [optional] 
**signing_certificate_uuid** | **string** | UUID of the Certificate to be used as signing certificate for CMP responses. Required when responseProtectionMethod is signature | [optional] 
**name** | **string** | Name of the CMP Profile | 
**variant** | **string** | Variant of the CMP Profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


