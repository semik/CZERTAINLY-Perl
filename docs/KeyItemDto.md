# CZERTAINLY::Object::KeyItemDto

## Load the model package
```perl
use CZERTAINLY::Object::KeyItemDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**description** | **string** | Description of the Key | 
**creation_time** | **DATE_TIME** | Creation time of the Key. If the key is discovered from the connector, then it will be returned | 
**key_wrapper_uuid** | **string** | UUID of the wrapper object | 
**token_profile_uuid** | **string** | UUID of the Token Profile | [optional] 
**token_profile_name** | **string** | Name of the Token Profile | [optional] 
**token_instance_uuid** | **string** | Token Instance UUID | 
**token_instance_name** | **string** | Token Instance Name | 
**owner** | **string** | Owner of the Key | [optional] 
**owner_uuid** | **string** | UUID of the owner of the Key | [optional] 
**groups** | [**ARRAY[GroupDto]**](GroupDto.md) | Groups associated to the Key | [optional] 
**associations** | **int** | Number of associated objects | [optional] 
**key_reference_uuid** | **string** | UUID of the key item in the Connector | 
**type** | [**KeyType**](KeyType.md) |  | 
**key_algorithm** | [**KeyAlgorithm**](KeyAlgorithm.md) |  | 
**format** | [**KeyFormat**](KeyFormat.md) |  | [optional] 
**length** | **int** | Key Length | [optional] 
**usage** | [**ARRAY[KeyUsage]**](KeyUsage.md) | Key Usages | 
**enabled** | **boolean** | Boolean describing if the key is enabled or not | 
**state** | [**KeyState**](KeyState.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


