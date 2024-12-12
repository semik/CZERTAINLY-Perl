# CZERTAINLY::Object::ComplianceProfileRuleDto

## Load the model package
```perl
use CZERTAINLY::Object::ComplianceProfileRuleDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the rule | [optional] 
**connector_name** | **string** | Connector Name | 
**connector_uuid** | **string** | Connector UUID | 
**kind** | **string** | Connector Kind | 
**group_uuid** | **string** | Group UUID | [optional] 
**certificate_type** | [**CertificateType**](CertificateType.md) |  | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of attributes for the rule | 
**compliance_profile_uuid** | **string** | UUID of the Compliance Profile | 
**compliance_profile_name** | **string** | Name of the Compliance Profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


