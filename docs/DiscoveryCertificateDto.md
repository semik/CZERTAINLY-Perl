# CZERTAINLY::Object::DiscoveryCertificateDto

## Load the model package
```perl
use CZERTAINLY::Object::DiscoveryCertificateDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | UUID of the Certificate | 
**inventory_uuid** | **string** | UUID of the Certificate in Certificate inventory | [optional] 
**common_name** | **string** | Certificate common name | 
**serial_number** | **string** | Certificate Serial Number | 
**issuer_common_name** | **string** | Issuer common name | 
**not_before** | **DATE_TIME** | Certificate validity start date | 
**not_after** | **DATE_TIME** | Certificate expiration date | 
**fingerprint** | **string** | SHA256 thumbprint of the certificate | 
**certificate_content** | **string** | Base64 encoded Certificate content | 
**newly_discovered** | **boolean** | Boolean representing if the certificate is newly discovered. True - Certificate is newly discoveredfalse - Certificate was already available in the inventory | 
**processed** | **boolean** | Indicator whether the discovery certificate has already been processed. | 
**processed_error** | **string** | Error message in case of failed processing of the discovery certificate. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


