# WWW::OpenAPIClient::CryptographicOperationsControllerApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CryptographicOperationsControllerApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**decrypt_data**](CryptographicOperationsControllerApi.md#decrypt_data) | **POST** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/decrypt | Decrypt data using a Key
[**encrypt_data**](CryptographicOperationsControllerApi.md#encrypt_data) | **POST** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/encrypt | Encrypt data using a Key
[**list_cipher_attributes**](CryptographicOperationsControllerApi.md#list_cipher_attributes) | **GET** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/cipher/{algorithm}/attributes | List of cipher Attributes
[**list_random_attributes**](CryptographicOperationsControllerApi.md#list_random_attributes) | **GET** /v1/operations/tokens/{tokenInstanceUuid}/random/attributes | List of random generator Attributes
[**list_signature_attributes**](CryptographicOperationsControllerApi.md#list_signature_attributes) | **GET** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/signature/{algorithm}/attributes | List of signature Attributes
[**random_data**](CryptographicOperationsControllerApi.md#random_data) | **POST** /v1/operations/tokens/{tokenInstanceUuid}/random | Generate random data
[**sign_data**](CryptographicOperationsControllerApi.md#sign_data) | **POST** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/sign | Sign data using a Key
[**verify_data**](CryptographicOperationsControllerApi.md#verify_data) | **POST** /v1/operations/tokens/{tokenInstanceUuid}/tokenProfiles/{tokenProfileUuid}/keys/{uuid}/items/{keyItemUuid}/verify | Verify data using a Key


# **decrypt_data**
> DecryptDataResponseDto decrypt_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, cipher_data_request_dto => $cipher_data_request_dto)

Decrypt data using a Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $cipher_data_request_dto = WWW::OpenAPIClient::Object::CipherDataRequestDto->new(); # CipherDataRequestDto | 

eval {
    my $result = $api_instance->decrypt_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, cipher_data_request_dto => $cipher_data_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->decrypt_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **cipher_data_request_dto** | [**CipherDataRequestDto**](CipherDataRequestDto.md)|  | 

### Return type

[**DecryptDataResponseDto**](DecryptDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **encrypt_data**
> EncryptDataResponseDto encrypt_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, cipher_data_request_dto => $cipher_data_request_dto)

Encrypt data using a Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $cipher_data_request_dto = WWW::OpenAPIClient::Object::CipherDataRequestDto->new(); # CipherDataRequestDto | 

eval {
    my $result = $api_instance->encrypt_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, cipher_data_request_dto => $cipher_data_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->encrypt_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **cipher_data_request_dto** | [**CipherDataRequestDto**](CipherDataRequestDto.md)|  | 

### Return type

[**EncryptDataResponseDto**](EncryptDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_cipher_attributes**
> ARRAY[BaseAttributeDto] list_cipher_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, algorithm => $algorithm)

List of cipher Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $algorithm = new WWW::OpenAPIClient.KeyAlgorithm(); # KeyAlgorithm | Cryptographic algorithm

eval {
    my $result = $api_instance->list_cipher_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, algorithm => $algorithm);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->list_cipher_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **algorithm** | [**KeyAlgorithm**](.md)| Cryptographic algorithm | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_random_attributes**
> ARRAY[BaseAttributeDto] list_random_attributes(token_instance_uuid => $token_instance_uuid)

List of random generator Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID

eval {
    my $result = $api_instance->list_random_attributes(token_instance_uuid => $token_instance_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->list_random_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_signature_attributes**
> ARRAY[BaseAttributeDto] list_signature_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, algorithm => $algorithm)

List of signature Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key instance UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $algorithm = new WWW::OpenAPIClient.KeyAlgorithm(); # KeyAlgorithm | Cryptographic algorithm

eval {
    my $result = $api_instance->list_signature_attributes(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, algorithm => $algorithm);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->list_signature_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key instance UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **algorithm** | [**KeyAlgorithm**](.md)| Cryptographic algorithm | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **random_data**
> RandomDataResponseDto random_data(token_instance_uuid => $token_instance_uuid, random_data_request_dto => $random_data_request_dto)

Generate random data

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $random_data_request_dto = WWW::OpenAPIClient::Object::RandomDataRequestDto->new(); # RandomDataRequestDto | 

eval {
    my $result = $api_instance->random_data(token_instance_uuid => $token_instance_uuid, random_data_request_dto => $random_data_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->random_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **random_data_request_dto** | [**RandomDataRequestDto**](RandomDataRequestDto.md)|  | 

### Return type

[**RandomDataResponseDto**](RandomDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_data**
> SignDataResponseDto sign_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, sign_data_request_dto => $sign_data_request_dto)

Sign data using a Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $sign_data_request_dto = WWW::OpenAPIClient::Object::SignDataRequestDto->new(); # SignDataRequestDto | 

eval {
    my $result = $api_instance->sign_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, sign_data_request_dto => $sign_data_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->sign_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **sign_data_request_dto** | [**SignDataRequestDto**](SignDataRequestDto.md)|  | 

### Return type

[**SignDataResponseDto**](SignDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_data**
> VerifyDataResponseDto verify_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, verify_data_request_dto => $verify_data_request_dto)

Verify data using a Key

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CryptographicOperationsControllerApi;
my $api_instance = WWW::OpenAPIClient::CryptographicOperationsControllerApi->new(
);

my $token_instance_uuid = "token_instance_uuid_example"; # string | Token Instance UUID
my $token_profile_uuid = "token_profile_uuid_example"; # string | Token Profile UUID
my $uuid = "uuid_example"; # string | Key UUID
my $key_item_uuid = "key_item_uuid_example"; # string | Key Item UUID
my $verify_data_request_dto = WWW::OpenAPIClient::Object::VerifyDataRequestDto->new(); # VerifyDataRequestDto | 

eval {
    my $result = $api_instance->verify_data(token_instance_uuid => $token_instance_uuid, token_profile_uuid => $token_profile_uuid, uuid => $uuid, key_item_uuid => $key_item_uuid, verify_data_request_dto => $verify_data_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CryptographicOperationsControllerApi->verify_data: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_instance_uuid** | **string**| Token Instance UUID | 
 **token_profile_uuid** | **string**| Token Profile UUID | 
 **uuid** | **string**| Key UUID | 
 **key_item_uuid** | **string**| Key Item UUID | 
 **verify_data_request_dto** | [**VerifyDataRequestDto**](VerifyDataRequestDto.md)|  | 

### Return type

[**VerifyDataResponseDto**](VerifyDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

