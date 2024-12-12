# CZERTAINLY::Object::DiscoveryDto

## Load the model package
```perl
use CZERTAINLY::Object::DiscoveryDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | Discovery name | 
**attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Attributes for Discovery | 
**custom_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of Custom Attributes | [optional] 
**connector_uuid** | **string** | Discovery Provider UUID | 
**kind** | **string** | Discovery Kind | 
**triggers** | **ARRAY[string]** | List of triggers to be triggered after the discovery is finished, triggers will be evaluated in given order | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


