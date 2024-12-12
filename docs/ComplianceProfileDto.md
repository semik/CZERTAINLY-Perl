# CZERTAINLY::Object::ComplianceProfileDto

## Load the model package
```perl
use CZERTAINLY::Object::ComplianceProfileDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the Compliance Profile | [optional] 
**rules** | [**ARRAY[ComplianceConnectorAndRulesDto]**](ComplianceConnectorAndRulesDto.md) | List of rules | 
**groups** | [**ARRAY[ComplianceConnectorAndGroupsDto]**](ComplianceConnectorAndGroupsDto.md) | List of groups | 
**ra_profiles** | [**ARRAY[SimplifiedRaProfileDto]**](SimplifiedRaProfileDto.md) | List of associated RA Profiles | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


