# WWW::OpenAPIClient::Object::SearchFilterRequestDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::SearchFilterRequestDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_source** | [**FilterFieldSource**](FilterFieldSource.md) |  | 
**field_identifier** | **string** | Field identifier of search filter. List of available fields with their identifiers can be retrieved from corresponding endpoint &#x60;GET /v1/{resource}/search&#x60;, e.g.: [**GET /v1/certificates/search**](../core-certificate/#tag/Certificate-Inventory/operation/getSearchableFieldInformation) | 
**condition** | [**FilterConditionOperator**](FilterConditionOperator.md) |  | 
**value** | **object** | Value to match | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


