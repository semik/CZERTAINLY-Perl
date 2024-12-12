# CZERTAINLY::Object::DiscoveryHistoryDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::DiscoveryHistoryDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**kind** | **string** | Discovery Kind | 
**status** | [**DiscoveryStatus**](DiscoveryStatus.md) |  | 
**connector_status** | [**DiscoveryStatus**](DiscoveryStatus.md) |  | 
**message** | **string** | Failure/Success Messages | [optional] 
**start_time** | **DATE_TIME** | Date and time when Discovery started | [optional] 
**end_time** | **DATE_TIME** | Date and time when Discovery finished | [optional] 
**total_certificates_discovered** | **int** | Number of certificates that are discovered | [optional] [default to 0]
**connector_total_certificates_discovered** | **int** | Number of certificates that were discovered by connector | [optional] [default to 0]
**connector_uuid** | **string** | UUID of the Discovery Provider | 
**connector_name** | **string** | Name of the Discovery Provider | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Discovery Attributes | 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Metadata of the Discovery | [optional] 
**triggers** | [**ARRAY[TriggerDto]**](TriggerDto.md) | List of associated triggers | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


