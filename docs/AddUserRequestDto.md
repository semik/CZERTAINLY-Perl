# WWW::OpenAPIClient::Object::AddUserRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AddUserRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **string** | Username of the user | 
**description** | **string** | Description of the user | [optional] 
**first_name** | **string** | First name of the user | [optional] 
**last_name** | **string** | Last name of the user | [optional] 
**email** | **string** | Email of the user | [optional] 
**group_uuids** | **ARRAY[string]** | Groups UUIDs of the user | [optional] 
**enabled** | **boolean** | Status of the user. True &#x3D; Enabled, False &#x3D; Disabled | [optional] 
**certificate_data** | **string** | Base64 Content of the user certificate | [optional] 
**certificate_uuid** | **string** | UUID of the existing certificate in the Inventory | [optional] 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 
**name** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


