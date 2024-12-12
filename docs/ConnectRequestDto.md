# CZERTAINLY::Object::ConnectRequestDto

## Load the model package
```perl
use CZERTAINLY::Object::ConnectRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | URL of the Connector to connect | 
**uuid** | **string** | UUID of the Connector. Mandatory if connection is needed for the same Connector | [optional] 
**auth_type** | [**AuthType**](AuthType.md) |  | 
**auth_attributes** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md) | List of authentication Attributes. Required if the authentication type is not NONE | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


