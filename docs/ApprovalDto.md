# WWW::OpenAPIClient::Object::ApprovalDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ApprovalDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_uuid** | **string** | UUID of the Approval | 
**creator_uuid** | **string** | UUID of the user that requested approval | 
**creator_username** | **string** | Username of the user that requested approval | [optional] 
**version** | **int** | Version of the Approval profile | 
**created_at** | **DATE_TIME** | Creation date of the Approval | 
**expiry_at** | **DATE_TIME** | Expiry date of the Approval | 
**closed_at** | **DATE_TIME** | Date of resolution of the Approval | [optional] 
**status** | **string** | Status of the Approval | 
**resource** | [**Resource**](Resource.md) |  | 
**resource_action** | **string** | Resource action of the Approval | 
**object_uuid** | **string** | UUID of the target object of the Approval | 
**approval_profile_name** | **string** | Name of the Approval profile | 
**approval_profile_uuid** | **string** | UUID of the Approval profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


