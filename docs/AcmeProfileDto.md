# WWW::OpenAPIClient::Object::AcmeProfileDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::AcmeProfileDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**description** | **string** | ACME Profile description | [optional] 
**terms_of_service_url** | **string** | Terms of Service URL | [optional] 
**website_url** | **string** | Website URL | [optional] 
**dns_resolver_ip** | **string** | DNS Resolver IP address | [optional] 
**dns_resolver_port** | **string** | DNS Resolver port number | [optional] 
**ra_profile** | [**SimplifiedRaProfileDto**](SimplifiedRaProfileDto.md) |  | [optional] 
**retry_interval** | **int** | Retry interval for ACME client requests | [optional] 
**terms_of_service_change_disable** | **boolean** | Disable new Orders (change in Terms of Service) | [optional] 
**validity** | **int** | Order validity | [optional] 
**directory_url** | **string** | ACME Directory URL | [optional] 
**terms_of_service_change_url** | **string** | Changes of Terms of Service URL | [optional] 
**require_contact** | **boolean** | Require Contact information for new Account | [optional] 
**require_terms_of_service** | **boolean** | Require new Account to agree on Terms of Service | [optional] 
**issue_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to issue a Certificate | [optional] 
**revoke_certificate_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Attributes to revoke a Certificate | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Custom Attributes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


