# CZERTAINLY::Object::DiscoveryHistoryDto

## Load the model package
```perl
use CZERTAINLY::Object::DiscoveryHistoryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**kind** | **string** | Discovery Kind | 
**status** | [**DiscoveryStatus**](DiscoveryStatus.md) |  | 
**start_time** | **DATE_TIME** | Date and time when Discovery started | [optional] 
**end_time** | **DATE_TIME** | Date and time when Discovery finished | [optional] 
**total_certificates_discovered** | **int** | Number of certificates that are discovered | [optional] [default to 0]
**connector_uuid** | **string** | UUID of the Discovery Provider | 
**connector_name** | **string** | Name of the Discovery Provider | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


