# WWW::OpenAPIClient::Object::ClientCertificateRevocationDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ClientCertificateRevocationDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | [**CertificateRevocationReason**](CertificateRevocationReason.md) |  | [optional] 
**attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to revoke Certificate | 
**destroy_key** | **boolean** | Destroy Key upon successful revocation | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


