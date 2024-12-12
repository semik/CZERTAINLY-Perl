# CZERTAINLY::Object::ClientCertificateRenewRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ClientCertificateRenewRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**replace_in_locations** | **boolean** | True to replace renewed certificate in the associated locations | [optional] [default to false]
**request** | **string** | Certificate signing request encoded as Base64 string. If not provided, Existing CSR will be used | [optional] 
**format** | [**CertificateRequestFormat**](CertificateRequestFormat.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


