# CZERTAINLY::Object::UpdateUserRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::UpdateUserRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | Description of the user | [optional] 
**first_name** | **string** | First name of the user | [optional] 
**last_name** | **string** | Last name of the user | [optional] 
**email** | **string** | Email of the user | 
**group_uuids** | **ARRAY[string]** | Groups UUIDs of the user (set to empty list to remove certificate from all groups) | [optional] 
**certificate_data** | **string** | Base64 Content of the admin certificate | [optional] 
**certificate_uuid** | **string** | UUID of the existing certificate in the Inventory. Mandatory if certificate is not provided | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


