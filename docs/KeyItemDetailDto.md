# CZERTAINLY::Object::KeyItemDetailDto

## Load the model package
```perl
use CZERTAINLY::Object::KeyItemDetailDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **string** | Object identifier | 
**name** | **string** | Object Name | 
**key_reference_uuid** | **string** | UUID of the key item in the Connector | 
**type** | [**KeyType**](KeyType.md) |  | 
**key_algorithm** | [**KeyAlgorithm**](KeyAlgorithm.md) |  | 
**format** | [**KeyFormat**](KeyFormat.md) |  | [optional] 
**key_data** | **string** | Key Data | [optional] 
**length** | **int** | Key Length | [optional] 
**metadata** | [**ARRAY[MetadataResponseDto]**](MetadataResponseDto.md) | Metadata for the key | [optional] 
**usage** | [**ARRAY[KeyUsage]**](KeyUsage.md) | Key Usages | 
**enabled** | **boolean** | Boolean describing if the key is enabled or not | 
**state** | [**KeyState**](KeyState.md) |  | 
**reason** | [**KeyCompromiseReason**](KeyCompromiseReason.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


