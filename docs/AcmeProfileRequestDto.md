# CZERTAINLY::Object::AcmeProfileRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::AcmeProfileRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Name of the ACME Profile | 
**description** | **string** | Description of the ACME Profile | [optional] 
**terms_of_service_url** | **string** | Terms of Service URL | [optional] 
**website_url** | **string** | Website URL | [optional] 
**dns_resolver_ip** | **string** | DNS Resolver IP address | [optional] [default to &#39;System Default&#39;]
**dns_resolver_port** | **string** | DNS Resolver port number | [optional] [default to &#39;53&#39;]
**ra_profile_uuid** | **string** | RA Profile UUID | [optional] 
**retry_interval** | **int** | Retry interval for the Orders | [optional] [default to 30]
**validity** | **int** | Order Validity | [optional] [default to 36000]
**issue_certificate_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to issue Certificate | 
**revoke_certificate_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes to revoke Certificate | 
**require_contact** | **boolean** | Require contact information for new Account | [optional] [default to false]
**require_terms_of_service** | **boolean** | Require new Account to agree on Terms of Service | [optional] [default to false]
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


