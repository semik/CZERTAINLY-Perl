# WWW::OpenAPIClient::Object::MultipleCertificateObjectUpdateDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::MultipleCertificateObjectUpdateDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_uuids** | **ARRAY[string]** | Certificate Groups UUIDs (set to empty list to remove certificate from all groups) | [optional] 
**owner_uuid** | **string** | Certificate owner user UUID (set to empty string to remove owner of certificate) | [optional] 
**ra_profile_uuid** | **string** | RA Profile UUID (set to empty string to remove certificate from RA profile) | [optional] 
**certificate_uuids** | **ARRAY[string]** | List of Certificate UUIDs | [optional] 
**filters** | [**ARRAY[SearchFilterRequestDto]**](SearchFilterRequestDto.md) | Certificate filter input | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


