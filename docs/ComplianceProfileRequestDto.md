# WWW::OpenAPIClient::Object::ComplianceProfileRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ComplianceProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Compliance Profile | 
**description** | **string** | Description of the Compliance Profile | [optional] 
**rules** | [**ARRAY[ComplianceProfileRulesRequestDto]**](ComplianceProfileRulesRequestDto.md) | Rules to be associated with the Compliance Profile. Profiles can be created without rules and can be added later | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


