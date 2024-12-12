# WWW::OpenAPIClient::Object::TokenInstanceDetailDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TokenInstanceDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**connector_name** | **string** | Connector Name | [optional] 
**connector_uuid** | **string** | Connector UUID | [optional] 
**kind** | **string** | Connector Kind | [optional] 
**status** | [**TokenInstanceStatusDetailDto**](TokenInstanceStatusDetailDto.md) |  | 
**token_profiles** | **int** | Number of Token Profiles associated | 
**attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | List of Token instance Attributes | 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Token instance Metadata | [optional] 
**custom_attributes** | [**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md) | Custom Attributes for the Token Instance | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


