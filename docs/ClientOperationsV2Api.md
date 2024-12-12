# CZERTAINLY::ClientOperationsV2Api

## Load the API package
```perl
use CZERTAINLY::Object::ClientOperationsV2Api;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issue_certificate**](ClientOperationsV2Api.md#issue_certificate) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/certificates | Issue Certificate
[**issue_requested_certificate**](ClientOperationsV2Api.md#issue_requested_certificate) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/certificates/{certificateUuid}/issue | Issue existing certificate with status Requested
[**list_issue_certificate_attributes**](ClientOperationsV2Api.md#list_issue_certificate_attributes) | **GET** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/issue | Get issue Certificate Attributes
[**list_revoke_certificate_attributes**](ClientOperationsV2Api.md#list_revoke_certificate_attributes) | **GET** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/revoke | Get revocation Attributes
[**rekey_certificate**](ClientOperationsV2Api.md#rekey_certificate) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/certificates/{certificateUuid}/rekey | Rekey Certificate
[**renew_certificate**](ClientOperationsV2Api.md#renew_certificate) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/certificates/{certificateUuid}/renew | Renew Certificate
[**revoke_certificate**](ClientOperationsV2Api.md#revoke_certificate) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/certificates/{certificateUuid}/revoke | Revoke Certificate
[**validate_issue_certificate_attributes**](ClientOperationsV2Api.md#validate_issue_certificate_attributes) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/issue/validate | Validate issue Certificate Attributes
[**validate_revoke_certificate_attributes**](ClientOperationsV2Api.md#validate_revoke_certificate_attributes) | **POST** /v2/operations/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/revoke/validate | Validate revocation Attributes


# **issue_certificate**
> ClientCertificateDataResponseDto issue_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, client_certificate_sign_request_dto => $client_certificate_sign_request_dto)

Issue Certificate

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $client_certificate_sign_request_dto = CZERTAINLY::Object::ClientCertificateSignRequestDto->new(); # ClientCertificateSignRequestDto | 

eval {
    my $result = $api_instance->issue_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, client_certificate_sign_request_dto => $client_certificate_sign_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->issue_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **client_certificate_sign_request_dto** | [**ClientCertificateSignRequestDto**](ClientCertificateSignRequestDto.md)|  | 

### Return type

[**ClientCertificateDataResponseDto**](ClientCertificateDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issue_requested_certificate**
> ClientCertificateDataResponseDto issue_requested_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid)

Issue existing certificate with status Requested

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->issue_requested_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->issue_requested_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 

### Return type

[**ClientCertificateDataResponseDto**](ClientCertificateDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_issue_certificate_attributes**
> ARRAY[BaseAttributeDto] list_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get issue Certificate Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->list_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->list_issue_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_revoke_certificate_attributes**
> ARRAY[BaseAttributeDto] list_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get revocation Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->list_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->list_revoke_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rekey_certificate**
> ClientCertificateDataResponseDto rekey_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_rekey_request_dto => $client_certificate_rekey_request_dto)

Rekey Certificate

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID
my $client_certificate_rekey_request_dto = CZERTAINLY::Object::ClientCertificateRekeyRequestDto->new(); # ClientCertificateRekeyRequestDto | 

eval {
    my $result = $api_instance->rekey_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_rekey_request_dto => $client_certificate_rekey_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->rekey_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 
 **client_certificate_rekey_request_dto** | [**ClientCertificateRekeyRequestDto**](ClientCertificateRekeyRequestDto.md)|  | 

### Return type

[**ClientCertificateDataResponseDto**](ClientCertificateDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renew_certificate**
> ClientCertificateDataResponseDto renew_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_renew_request_dto => $client_certificate_renew_request_dto)

Renew Certificate

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID
my $client_certificate_renew_request_dto = CZERTAINLY::Object::ClientCertificateRenewRequestDto->new(); # ClientCertificateRenewRequestDto | 

eval {
    my $result = $api_instance->renew_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_renew_request_dto => $client_certificate_renew_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->renew_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 
 **client_certificate_renew_request_dto** | [**ClientCertificateRenewRequestDto**](ClientCertificateRenewRequestDto.md)|  | 

### Return type

[**ClientCertificateDataResponseDto**](ClientCertificateDataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_certificate**
> revoke_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_revocation_dto => $client_certificate_revocation_dto)

Revoke Certificate

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID
my $client_certificate_revocation_dto = CZERTAINLY::Object::ClientCertificateRevocationDto->new(); # ClientCertificateRevocationDto | 

eval {
    $api_instance->revoke_certificate(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, certificate_uuid => $certificate_uuid, client_certificate_revocation_dto => $client_certificate_revocation_dto);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->revoke_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **certificate_uuid** | **string**| Certificate UUID | 
 **client_certificate_revocation_dto** | [**ClientCertificateRevocationDto**](ClientCertificateRevocationDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_issue_certificate_attributes**
> validate_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, request_attribute_dto => $request_attribute_dto)

Validate issue Certificate Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->validate_issue_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_revoke_certificate_attributes**
> validate_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, request_attribute_dto => $request_attribute_dto)

Validate revocation Attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ClientOperationsV2Api;
my $api_instance = CZERTAINLY::ClientOperationsV2Api->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $request_attribute_dto = [CZERTAINLY::Object::ARRAY[RequestAttributeDto]->new()]; # ARRAY[RequestAttributeDto] | 

eval {
    $api_instance->validate_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, request_attribute_dto => $request_attribute_dto);
};
if ($@) {
    warn "Exception when calling ClientOperationsV2Api->validate_revoke_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **request_attribute_dto** | [**ARRAY[RequestAttributeDto]**](RequestAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

