# WWW::OpenAPIClient::Object::KeyDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::KeyDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the Key | 
**creation_time** | **DATE_TIME** | Creation time of the Key. If the key is discovered from the connector, then it will be returned | 
**token_profile_uuid** | **string** | UUID of the Token Profile | [optional] 
**token_profile_name** | **string** | Name of the Token Profile | [optional] 
**token_instance_uuid** | **string** | Token Instance UUID | 
**token_instance_name** | **string** | Token Instance Name | 
**owner** | **string** | Owner of the Key | [optional] 
**owner_uuid** | **string** | UUID of the owner of the Key | [optional] 
**groups** | [**ARRAY[GroupDto]**](GroupDto.md) | Groups associated to the key | [optional] 
**items** | [**ARRAY[KeyItemDto]**](KeyItemDto.md) | Key Items | 
**associations** | **int** | Number of associated objects | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


