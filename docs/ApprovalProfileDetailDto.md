# WWW::OpenAPIClient::Object::ApprovalProfileDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ApprovalProfileDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Approval profile | 
**name** | **string** | Name of the Approval profile | 
**version** | **int** | Version of the Approval profile | 
**description** | **string** | Description of the Approval profile | [optional] 
**enabled** | **boolean** | Enable of the Approval profile | 
**expiry** | **int** | Expiration of the Approval profile in hours | [optional] 
**number_of_steps** | **int** | Number of the Approval profile steps | 
**associations** | **int** | Number of associated objects | 
**approval_steps** | [**ARRAY[ApprovalStepDto]**](ApprovalStepDto.md) | List of Approval steps for the Approval profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


