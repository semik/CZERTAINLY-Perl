# WWW::OpenAPIClient::Object::ScepProfileDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::ScepProfileDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**enabled** | **boolean** | Enabled flag - true &#x3D; enabled; false &#x3D; disabled | 
**description** | **string** | SCEP Profile description | [optional] 
**ra_profile** | [**SimplifiedRaProfileDto**](SimplifiedRaProfileDto.md) |  | [optional] 
**include_ca_certificate** | **boolean** | Include CA certificate in the SCEP response | 
**include_ca_certificate_chain** | **boolean** | Include CA certificate chain in the SCEP response | 
**renew_threshold** | **int** | Renewal time threshold in days | [optional] 
**scep_url** | **string** | SCEP URL | [optional] 
**enable_intune** | **boolean** | Status of Intune | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


