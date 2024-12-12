# CZERTAINLY::Object::AcmeAccountResponseDto

## Load the model package
```perl
use CZERTAINLY::Object::AcmeAccountResponseDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **string** | ID of the Account | 
**uuid** | **string** | UUID of the Account | 
**enabled** | **boolean** | Enabled flag. enabled&#x3D;true, disabled&#x3D;false | 
**total_orders** | **int** | Order count for the Account | 
**successful_orders** | **int** | Number of successful Orders | 
**failed_orders** | **int** | Number of failed Orders | 
**pending_orders** | **int** | Number of pending Orders | 
**valid_orders** | **int** | Number of valid Orders | 
**processing_orders** | **int** | Number of processing Orders | 
**status** | [**AccountStatus**](AccountStatus.md) |  | 
**contact** | **ARRAY[string]** | Contact information | 
**terms_of_service_agreed** | **boolean** | Terms of Service Agreed | 
**ra_profile** | [**SimplifiedRaProfileDto**](SimplifiedRaProfileDto.md) |  | 
**acme_profile_name** | **string** | Name of the ACME Profile | 
**acme_profile_uuid** | **string** | UUID of the ACME Profile | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


