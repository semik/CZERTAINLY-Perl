# WWW::OpenAPIClient::CryptographicKeyControllerApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CryptographicKeyControllerApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compromise_key**](CryptographicKeyControllerApi.md#compromise_key) | **PATCH** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/compromise | Mark Key and its Items as Compromised
[**compromise_key_items**](CryptographicKeyControllerApi.md#compromise_key_items) | **PATCH** /v1/keys/items/compromise | Mark Multiple Key Items as Compromised
[**compromise_keys**](CryptographicKeyControllerApi.md#compromise_keys) | **PATCH** /v1/keys/compromise | Mark Multiple Key and all its Items as Compromised
[**create_key**](CryptographicKeyControllerApi.md#create_key) | **POST** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{type} | Create a new Cryptographic Key
[**delete_key**](CryptographicKeyControllerApi.md#delete_key) | **DELETE** /v1/tokens/{tokenInstanceUuid}/keys/{uuid} | Delete Cryptographic Key
[**delete_key_items**](CryptographicKeyControllerApi.md#delete_key_items) | **DELETE** /v1/keys/items | Delete Multiple Cryptographic Key Items
[**delete_keys**](CryptographicKeyControllerApi.md#delete_keys) | **DELETE** /v1/keys | Delete Multiple Cryptographic Key
[**destroy_key**](CryptographicKeyControllerApi.md#destroy_key) | **PATCH** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/destroy | Destroy Cryptographic Key
[**destroy_key_items**](CryptographicKeyControllerApi.md#destroy_key_items) | **PATCH** /v1/keys/items/destroy | Destroy Multiple Cryptographic Key items
[**destroy_keys**](CryptographicKeyControllerApi.md#destroy_keys) | **PATCH** /v1/keys/destroy | Destroy Multiple Cryptographic Key and its items
[**disable_key**](CryptographicKeyControllerApi.md#disable_key) | **PATCH** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/disable | Disable Key
[**disable_key_items**](CryptographicKeyControllerApi.md#disable_key_items) | **PATCH** /v1/keys/items/disable | Disable multiple Key Items
[**disable_keys**](CryptographicKeyControllerApi.md#disable_keys) | **PATCH** /v1/keys/disable | Disable multiple Keys
[**edit_key**](CryptographicKeyControllerApi.md#edit_key) | **PUT** /v1/tokens/{tokenInstanceUuid}/keys/{uuid} | Edit Key
[**enable_key**](CryptographicKeyControllerApi.md#enable_key) | **PATCH** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/enable | Enable Key
[**enable_key_items**](CryptographicKeyControllerApi.md#enable_key_items) | **PATCH** /v1/keys/items/enable | Enable multiple Key Items
[**enable_keys**](CryptographicKeyControllerApi.md#enable_keys) | **PATCH** /v1/keys/enable | Enable multiple Keys
[**get_event_history**](CryptographicKeyControllerApi.md#get_event_history) | **GET** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/items/{keyItemUuid}/history | Get Key Item event history
[**get_key**](CryptographicKeyControllerApi.md#get_key) | **GET** /v1/tokens/{tokenInstanceUuid}/keys/{uuid} | Get Cryptographic Key Detail
[**get_key_item**](CryptographicKeyControllerApi.md#get_key_item) | **GET** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/items/{keyItemUuid} | Get Cryptographic Key Detail
[**get_searchable_field_information1**](CryptographicKeyControllerApi.md#get_searchable_field_information1) | **GET** /v1/keys/search | Get CryptographicKey searchable fields information
[**list_create_key_attributes**](CryptographicKeyControllerApi.md#list_create_key_attributes) | **GET** /v1/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{type}/attributes | List of Attributes to create a Key
[**list_cryptographic_keys**](CryptographicKeyControllerApi.md#list_cryptographic_keys) | **POST** /v1/keys | List cryptographic keys
[**list_key_pairs**](CryptographicKeyControllerApi.md#list_key_pairs) | **GET** /v1/keys/pairs | List Cryptographic Keys with full Key Pairs
[**sync_keys**](CryptographicKeyControllerApi.md#sync_keys) | **PATCH** /v1/tokens/{tokenInstanceUuid}/sync | Sync Keys from connector
[**update_key_item_usages**](CryptographicKeyControllerApi.md#update_key_item_usages) | **PUT** /v1/keys/items/usages | Update Key Usages for Multiple Key Items
[**update_key_usages1**](CryptographicKeyControllerApi.md#update_key_usages1) | **PUT** /v1/tokens/{tokenInstanceUuid}/keys/{uuid}/usages | Update Key Usage
[**update_keys_usages1**](CryptographicKeyControllerApi.md#update_keys_usages1) | **PUT** /v1/keys/usages | Update Key Usages for Multiple Keys


# **compromise_key**
> compromise_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, compromise_key_request_dto => $compromise_key_request_dto)

Mark Key and its Items as Compromised

If the request body is provided with the UUID of the items of Key, then only those itemswill be compromised. Else all the sub items of the key will be compromised

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $compromise_key_request_dto = WWW::OpenAPIClient::Object::CompromiseKeyRequestDto->new(); # CompromiseKeyRequestDto | 

eval {
    $api_instance->compromise_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, compromise_key_request_dto => $compromise_key_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->compromise_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **compromise_key_request_dto** | [**CompromiseKeyRequestDto**](CompromiseKeyRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compromise_key_items**
> compromise_key_items(bulk_compromise_key_item_request_dto => $bulk_compromise_key_item_request_dto)

Mark Multiple Key Items as Compromised

This API can be used to mark multiple keys items to be marked as compromised.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $bulk_compromise_key_item_request_dto = WWW::OpenAPIClient::Object::BulkCompromiseKeyItemRequestDto->new(); # BulkCompromiseKeyItemRequestDto | 

eval {
    $api_instance->compromise_key_items(bulk_compromise_key_item_request_dto => $bulk_compromise_key_item_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->compromise_key_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_compromise_key_item_request_dto** | [**BulkCompromiseKeyItemRequestDto**](BulkCompromiseKeyItemRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compromise_keys**
> compromise_keys(bulk_compromise_key_request_dto => $bulk_compromise_key_request_dto)

Mark Multiple Key and all its Items as Compromised

This API can be used to mark multiple keys and its sub items to be marked as compromised.Specific part of the key cannot be mentioned in this API

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $bulk_compromise_key_request_dto = WWW::OpenAPIClient::Object::BulkCompromiseKeyRequestDto->new(); # BulkCompromiseKeyRequestDto | 

eval {
    $api_instance->compromise_keys(bulk_compromise_key_request_dto => $bulk_compromise_key_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->compromise_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_compromise_key_request_dto** | [**BulkCompromiseKeyRequestDto**](BulkCompromiseKeyRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_key**
> KeyDetailDto create_key(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, type => $type, key_request_dto => $key_request_dto)

Create a new Cryptographic Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | UUID of the Token Instance
my $token_profile_uuid = "token_profile_uuid_example"; # string | UUID of the Token Profile
my $type = new WWW::OpenAPIClient.KeyRequestType(); # KeyRequestType | Type of the key to be created
my $key_request_dto = WWW::OpenAPIClient::Object::KeyRequestDto->new(); # KeyRequestDto | 

eval {
    my $result = $api_instance->create_key(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, type => $type, key_request_dto => $key_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->create_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| UUID of the Token Instance | 
 **token_profile_uuid** | **string**| UUID of the Token Profile | 
 **type** | [**KeyRequestType**](.md)| Type of the key to be created | 
 **key_request_dto** | [**KeyRequestDto**](KeyRequestDto.md)|  | 

### Return type

[**KeyDetailDto**](KeyDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_key**
> delete_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body)

Delete Cryptographic Key

If the request body provided, only those key items will be deleted. If the request body is not provided or given empty, then the entire key will be destroyed

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->delete_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->delete_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_key_items**
> delete_key_items(request_body => $request_body)

Delete Multiple Cryptographic Key Items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Items UUIDs

eval {
    $api_instance->delete_key_items(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->delete_key_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key Items UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_keys**
> delete_keys(request_body => $request_body)

Delete Multiple Cryptographic Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key UUIDs

eval {
    $api_instance->delete_keys(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->delete_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_key**
> destroy_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body)

Destroy Cryptographic Key

If the request body provided, only those key items will be destroyed. If the request body is not provided or given empty, then the entire key will be destroyed

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key UUIDs

eval {
    $api_instance->destroy_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->destroy_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| Key UUIDs | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_key_items**
> destroy_key_items(request_body => $request_body)

Destroy Multiple Cryptographic Key items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->destroy_key_items(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->destroy_key_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_keys**
> destroy_keys(request_body => $request_body)

Destroy Multiple Cryptographic Key and its items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key UUIDs

eval {
    $api_instance->destroy_keys(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->destroy_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_key**
> disable_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body)

Disable Key

If the request body provided, only those key items will be disabled. If the request body is not provided or given empty, then the entire key will be disabled

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->disable_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->disable_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_key_items**
> disable_key_items(request_body => $request_body)

Disable multiple Key Items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->disable_key_items(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->disable_key_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_keys**
> disable_keys(request_body => $request_body)

Disable multiple Keys

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key UUIDs

eval {
    $api_instance->disable_keys(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->disable_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_key**
> KeyDetailDto edit_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, edit_key_request_dto => $edit_key_request_dto)

Edit Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $edit_key_request_dto = WWW::OpenAPIClient::Object::EditKeyRequestDto->new(); # EditKeyRequestDto | 

eval {
    my $result = $api_instance->edit_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, edit_key_request_dto => $edit_key_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->edit_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **edit_key_request_dto** | [**EditKeyRequestDto**](EditKeyRequestDto.md)|  | 

### Return type

[**KeyDetailDto**](KeyDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_key**
> enable_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body)

Enable Key

If the request body provided, only those key items will be enabled. If the request body is not provided or given empty, then the entire key will be enabled

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->enable_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->enable_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_key_items**
> enable_key_items(request_body => $request_body)

Enable multiple Key Items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key Item UUIDs

eval {
    $api_instance->enable_key_items(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->enable_key_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key Item UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_keys**
> enable_keys(request_body => $request_body)

Enable multiple Keys

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Key UUIDs

eval {
    $api_instance->enable_keys(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->enable_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Key UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_event_history**
> ARRAY[KeyEventHistoryDto] get_event_history(token_instance_uuid => $token_instance_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid)

Get Key Item event history

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID

eval {
    my $result = $api_instance->get_event_history(token_instance_uuid => $token_instance_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->get_event_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 

### Return type

[**ARRAY[KeyEventHistoryDto]**](KeyEventHistoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_key**
> KeyDetailDto get_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid)

Get Cryptographic Key Detail

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | UUID of the Token Instance
my $uuid = "uuid_example"; # string | UUID of the Key

eval {
    my $result = $api_instance->get_key(token_instance_uuid => $token_instance_uuid, uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->get_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| UUID of the Token Instance | 
 **uuid** | **string**| UUID of the Key | 

### Return type

[**KeyDetailDto**](KeyDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_key_item**
> KeyItemDetailDto get_key_item(token_instance_uuid => $token_instance_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid)

Get Cryptographic Key Detail

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | UUID of the Token Instance
my $uuid = "uuid_example"; # string | UUID of the Key
my $key_item_uuid = "key_item_uuid_example"; # string | UUID of the Key Item

eval {
    my $result = $api_instance->get_key_item(token_instance_uuid => $token_instance_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->get_key_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| UUID of the Token Instance | 
 **uuid** | **string**| UUID of the Key | 
 **key_item_uuid** | **string**| UUID of the Key Item | 

### Return type

[**KeyItemDetailDto**](KeyItemDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information1**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information1()

Get CryptographicKey searchable fields information

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->get_searchable_field_information1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SearchFieldDataByGroupDto]**](SearchFieldDataByGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_create_key_attributes**
> ARRAY[BaseAttributeDto] list_create_key_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, type => $type)

List of Attributes to create a Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $type = new WWW::OpenAPIClient.KeyRequestType(); # KeyRequestType | Type of the key to be created

eval {
    my $result = $api_instance->list_create_key_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->list_create_key_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **type** | [**KeyRequestType**](.md)| Type of the key to be created | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cryptographic_keys**
> CryptographicKeyResponseDto list_cryptographic_keys(search_request_dto => $search_request_dto)

List cryptographic keys

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $search_request_dto = WWW::OpenAPIClient::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_cryptographic_keys(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->list_cryptographic_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**CryptographicKeyResponseDto**](CryptographicKeyResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_key_pairs**
> ARRAY[KeyDto] list_key_pairs(token_profile_uuid => $token_profile_uuid)

List Cryptographic Keys with full Key Pairs

This API contains the logic to get the keys that contains the full key pair (private and public Key)

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_profile_uuid = "token_profile_uuid_example"; # string | 

eval {
    my $result = $api_instance->list_key_pairs(token_profile_uuid => $token_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->list_key_pairs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_profile_uuid** | **string**|  | [optional] 

### Return type

[**ARRAY[KeyDto]**](KeyDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_keys**
> sync_keys(token_instance_uuid => $token_instance_uuid)

Sync Keys from connector

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID

eval {
    $api_instance->sync_keys(token_instance_uuid => $token_instance_uuid);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->sync_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_key_item_usages**
> update_key_item_usages(bulk_key_item_usage_request_dto => $bulk_key_item_usage_request_dto)

Update Key Usages for Multiple Key Items

Update the key usages for multiple keys Items

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $bulk_key_item_usage_request_dto = WWW::OpenAPIClient::Object::BulkKeyItemUsageRequestDto->new(); # BulkKeyItemUsageRequestDto | 

eval {
    $api_instance->update_key_item_usages(bulk_key_item_usage_request_dto => $bulk_key_item_usage_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->update_key_item_usages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_key_item_usage_request_dto** | [**BulkKeyItemUsageRequestDto**](BulkKeyItemUsageRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_key_usages1**
> update_key_usages1(token_instance_uuid => $token_instance_uuid, uuid => $uuid, update_key_usage_request_dto => $update_key_usage_request_dto)

Update Key Usage

If the request body provided, only those key items will be updated. If the request body is not provided or given empty, then the entire key will be updated

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $uuid = "uuid_example"; # string | Key UUID
my $update_key_usage_request_dto = WWW::OpenAPIClient::Object::UpdateKeyUsageRequestDto->new(); # UpdateKeyUsageRequestDto | 

eval {
    $api_instance->update_key_usages1(token_instance_uuid => $token_instance_uuid, uuid => $uuid, update_key_usage_request_dto => $update_key_usage_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->update_key_usages1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **uuid** | **string**| Key UUID | 
 **update_key_usage_request_dto** | [**UpdateKeyUsageRequestDto**](UpdateKeyUsageRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_keys_usages1**
> update_keys_usages1(bulk_key_usage_request_dto => $bulk_key_usage_request_dto)

Update Key Usages for Multiple Keys

Update the key usages for multiple keys and all the items inside it

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicKeyControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicKeyControllerApi->new(
);

my $bulk_key_usage_request_dto = WWW::OpenAPIClient::Object::BulkKeyUsageRequestDto->new(); # BulkKeyUsageRequestDto | 

eval {
    $api_instance->update_keys_usages1(bulk_key_usage_request_dto => $bulk_key_usage_request_dto);
};
if ($@) {
    warn "Exception when calling CryptographicKeyControllerApi->update_keys_usages1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulk_key_usage_request_dto** | [**BulkKeyUsageRequestDto**](BulkKeyUsageRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

