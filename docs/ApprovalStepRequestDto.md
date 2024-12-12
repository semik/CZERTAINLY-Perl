# CZERTAINLY::Object::ApprovalStepRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ApprovalStepRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_uuid** | **string** | UUID of the responsible user to approve action in approval step | [optional] 
**role_uuid** | **string** | UUID of the responsible role of the users to approve action in approval step | [optional] 
**group_uuid** | **string** | UUID of the responsible group of the users to approve action in approval step | [optional] 
**description** | **string** | Description of the approval step | [optional] 
**order** | **int** | Order of the position in the approval steps flow | 
**required_approvals** | **int** | Count of the required approvals for the approval step, by default there is 1 approval needed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


