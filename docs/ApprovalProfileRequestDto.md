# CZERTAINLY::Object::ApprovalProfileRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ApprovalProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the Approval profile | 
**description** | **string** | Description of the Approval profile | [optional] 
**enabled** | **boolean** | Enable of the Approval profile | 
**expiry** | **int** | Expiration of the Approval profile in hours | [optional] 
**approval_steps** | [**ARRAY[ApprovalStepRequestDto]**](ApprovalStepRequestDto.md) | List of Approval steps for the Approval profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


