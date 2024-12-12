# WWW::OpenAPIClient::CertificateInventoryApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CertificateInventoryApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_certificate**](CertificateInventoryApi.md#bulk_delete_certificate) | **POST** /v1/certificates/delete | Delete multiple certificates
[**bulk_update_certificate_objects**](CertificateInventoryApi.md#bulk_update_certificate_objects) | **PATCH** /v1/certificates | Update Group and/or Owner for multiple Certificates
[**check_certificates_compliance**](CertificateInventoryApi.md#check_certificates_compliance) | **POST** /v1/certificates/compliance | Initiate Certificate Compliance Check
[**delete_certificate**](CertificateInventoryApi.md#delete_certificate) | **DELETE** /v1/certificates/{uuid} | Delete a certificate
[**download_certificate**](CertificateInventoryApi.md#download_certificate) | **GET** /v1/certificates/{uuid}/{certificateFormat} | Download Certificate
[**download_certificate_chain**](CertificateInventoryApi.md#download_certificate_chain) | **GET** /v1/certificates/{uuid}/chain/{certificateFormat} | Download Certificate Chain in chosen format
[**get_certificate**](CertificateInventoryApi.md#get_certificate) | **GET** /v1/certificates/{uuid} | Get Certificate Details
[**get_certificate_chain**](CertificateInventoryApi.md#get_certificate_chain) | **GET** /v1/certificates/{uuid}/chain | Get certificate chain
[**get_certificate_content**](CertificateInventoryApi.md#get_certificate_content) | **POST** /v1/certificates/content | Get Certificate Content
[**get_certificate_event_history**](CertificateInventoryApi.md#get_certificate_event_history) | **GET** /v1/certificates/{uuid}/history | Get Certificate event history
[**get_certificate_validation_result**](CertificateInventoryApi.md#get_certificate_validation_result) | **GET** /v1/certificates/{uuid}/validate | Get Certificate Validation Result
[**get_csr_generation_attributes**](CertificateInventoryApi.md#get_csr_generation_attributes) | **GET** /v1/certificates/csr/attributes | Get CSR Generation Attributes
[**get_searchable_field_information4**](CertificateInventoryApi.md#get_searchable_field_information4) | **GET** /v1/certificates/search | Get Certificate searchable fields information
[**list_certificate_approvals**](CertificateInventoryApi.md#list_certificate_approvals) | **GET** /v1/certificates/{uuid}/approvals | List Certificates Approvals
[**list_certificate_locations**](CertificateInventoryApi.md#list_certificate_locations) | **GET** /v1/certificates/{certificateUuid}/locations | List of available Locations for the Certificate
[**list_certificates**](CertificateInventoryApi.md#list_certificates) | **POST** /v1/certificates | List Certificates
[**submit_certificate_request**](CertificateInventoryApi.md#submit_certificate_request) | **POST** /v1/certificates/create | Submit certificate request
[**update_certificate_objects**](CertificateInventoryApi.md#update_certificate_objects) | **PATCH** /v1/certificates/{uuid} | Update Certificate Objects
[**upload**](CertificateInventoryApi.md#upload) | **POST** /v1/certificates/upload | Upload a new Certificate


# **bulk_delete_certificate**
> BulkOperationResponse bulk_delete_certificate(remove_certificate_dto => $remove_certificate_dto)

Delete multiple certificates

In this operation, when the list of Certificate UUIDs are provided and the filter is left as null or undefined, then the change will be applied only to the list of Certificate UUIDs provided. When the filter is provided in the request, the list of UUIDs will be ignored and the change will be applied for the all the certificates that matches the filter criteria. To apply this change for all the Certificates in the inventory, provide an empty array \"[]\" for the value of \"filters\" in the request body

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $remove_certificate_dto = WWW::OpenAPIClient::Object::RemoveCertificateDto->new(); # RemoveCertificateDto | 

eval {
    my $result = $api_instance->bulk_delete_certificate(remove_certificate_dto => $remove_certificate_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->bulk_delete_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remove_certificate_dto** | [**RemoveCertificateDto**](RemoveCertificateDto.md)|  | 

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_update_certificate_objects**
> bulk_update_certificate_objects(multiple_certificate_object_update_dto => $multiple_certificate_object_update_dto)

Update Group and/or Owner for multiple Certificates

In this operation, when the list of Certificate UUIDs are provided and the filter is left as null or undefined, then the change will be applied only to the list of Certificate UUIDs provided. When the filter is provided in the request, the list of UUIDs will be ignored and the change will be applied for the all the certificates that matches the filter criteria. To apply this change for all the Certificates in the inventory, provide an empty array \"[]\" for the value of \"filters\" in the request body

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $multiple_certificate_object_update_dto = WWW::OpenAPIClient::Object::MultipleCertificateObjectUpdateDto->new(); # MultipleCertificateObjectUpdateDto | 

eval {
    $api_instance->bulk_update_certificate_objects(multiple_certificate_object_update_dto => $multiple_certificate_object_update_dto);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->bulk_update_certificate_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **multiple_certificate_object_update_dto** | [**MultipleCertificateObjectUpdateDto**](MultipleCertificateObjectUpdateDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_certificates_compliance**
> check_certificates_compliance(certificate_compliance_check_dto => $certificate_compliance_check_dto)

Initiate Certificate Compliance Check

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $certificate_compliance_check_dto = WWW::OpenAPIClient::Object::CertificateComplianceCheckDto->new(); # CertificateComplianceCheckDto | 

eval {
    $api_instance->check_certificates_compliance(certificate_compliance_check_dto => $certificate_compliance_check_dto);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->check_certificates_compliance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_compliance_check_dto** | [**CertificateComplianceCheckDto**](CertificateComplianceCheckDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_certificate**
> delete_certificate(uuid => $uuid)

Delete a certificate

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID

eval {
    $api_instance->delete_certificate(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->delete_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_certificate**
> CertificateDownloadResponseDto download_certificate(uuid => $uuid, certificate_format => $certificate_format, encoding => $encoding)

Download Certificate

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID
my $certificate_format = new WWW::OpenAPIClient.CertificateFormat(); # CertificateFormat | Certificate format
my $encoding = new WWW::OpenAPIClient.CertificateFormatEncoding(); # CertificateFormatEncoding | 

eval {
    my $result = $api_instance->download_certificate(uuid => $uuid, certificate_format => $certificate_format, encoding => $encoding);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->download_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 
 **certificate_format** | [**CertificateFormat**](.md)| Certificate format | 
 **encoding** | [**CertificateFormatEncoding**](.md)|  | 

### Return type

[**CertificateDownloadResponseDto**](CertificateDownloadResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_certificate_chain**
> CertificateChainDownloadResponseDto download_certificate_chain(uuid => $uuid, certificate_format => $certificate_format, encoding => $encoding, with_end_certificate => $with_end_certificate)

Download Certificate Chain in chosen format

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID
my $certificate_format = new WWW::OpenAPIClient.CertificateFormat(); # CertificateFormat | Certificate format
my $encoding = new WWW::OpenAPIClient.CertificateFormatEncoding(); # CertificateFormatEncoding | 
my $with_end_certificate = null; # boolean | 

eval {
    my $result = $api_instance->download_certificate_chain(uuid => $uuid, certificate_format => $certificate_format, encoding => $encoding, with_end_certificate => $with_end_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->download_certificate_chain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 
 **certificate_format** | [**CertificateFormat**](.md)| Certificate format | 
 **encoding** | [**CertificateFormatEncoding**](.md)|  | 
 **with_end_certificate** | **boolean**|  | [optional] 

### Return type

[**CertificateChainDownloadResponseDto**](CertificateChainDownloadResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate**
> CertificateDetailDto get_certificate(uuid => $uuid)

Get Certificate Details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->get_certificate(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_certificate: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 

### Return type

[**CertificateDetailDto**](CertificateDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate_chain**
> CertificateChainResponseDto get_certificate_chain(uuid => $uuid, with_end_certificate => $with_end_certificate)

Get certificate chain

Get certificate chain for the certificate with the given UUID. The certificate chain is returned in the order of the chain, with the first certificate being the certificate with the given UUID, up to the last identified certificate in the chain. If the certificate with the given UUID has status `NEW` or `REJECTED`, an empty list is returned.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID
my $with_end_certificate = null; # boolean | 

eval {
    my $result = $api_instance->get_certificate_chain(uuid => $uuid, with_end_certificate => $with_end_certificate);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_certificate_chain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 
 **with_end_certificate** | **boolean**|  | [optional] 

### Return type

[**CertificateChainResponseDto**](CertificateChainResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate_content**
> ARRAY[CertificateContentDto] get_certificate_content(request_body => $request_body)

Get Certificate Content

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Certificate UUIDs

eval {
    my $result = $api_instance->get_certificate_content(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_certificate_content: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Certificate UUIDs | 

### Return type

[**ARRAY[CertificateContentDto]**](CertificateContentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate_event_history**
> ARRAY[CertificateEventHistoryDto] get_certificate_event_history(uuid => $uuid)

Get Certificate event history

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->get_certificate_event_history(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_certificate_event_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 

### Return type

[**ARRAY[CertificateEventHistoryDto]**](CertificateEventHistoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificate_validation_result**
> CertificateValidationResultDto get_certificate_validation_result(uuid => $uuid)

Get Certificate Validation Result

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->get_certificate_validation_result(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_certificate_validation_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 

### Return type

[**CertificateValidationResultDto**](CertificateValidationResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_csr_generation_attributes**
> ARRAY[BaseAttributeDto] get_csr_generation_attributes()

Get CSR Generation Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);


eval {
    my $result = $api_instance->get_csr_generation_attributes();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_csr_generation_attributes: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information4**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information4()

Get Certificate searchable fields information

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information4();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->get_searchable_field_information4: $@\n";
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

# **list_certificate_approvals**
> ApprovalResponseDto list_certificate_approvals(uuid => $uuid, pagination_request_dto => $pagination_request_dto)

List Certificates Approvals

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID
my $pagination_request_dto = new WWW::OpenAPIClient.PaginationRequestDto(); # PaginationRequestDto | 

eval {
    my $result = $api_instance->list_certificate_approvals(uuid => $uuid, pagination_request_dto => $pagination_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->list_certificate_approvals: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 
 **pagination_request_dto** | [**PaginationRequestDto**](.md)|  | 

### Return type

[**ApprovalResponseDto**](ApprovalResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_certificate_locations**
> ARRAY[LocationDto] list_certificate_locations(certificate_uuid => $certificate_uuid)

List of available Locations for the Certificate

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $certificate_uuid = "certificate_uuid_example"; # string | Certificate UUID

eval {
    my $result = $api_instance->list_certificate_locations(certificate_uuid => $certificate_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->list_certificate_locations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_uuid** | **string**| Certificate UUID | 

### Return type

[**ARRAY[LocationDto]**](LocationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_certificates**
> CertificateResponseDto list_certificates(search_request_dto => $search_request_dto)

List Certificates

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $search_request_dto = WWW::OpenAPIClient::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_certificates(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->list_certificates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**CertificateResponseDto**](CertificateResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit_certificate_request**
> CertificateDetailDto submit_certificate_request(client_certificate_request_dto => $client_certificate_request_dto)

Submit certificate request

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $client_certificate_request_dto = WWW::OpenAPIClient::Object::ClientCertificateRequestDto->new(); # ClientCertificateRequestDto | 

eval {
    my $result = $api_instance->submit_certificate_request(client_certificate_request_dto => $client_certificate_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->submit_certificate_request: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_certificate_request_dto** | [**ClientCertificateRequestDto**](ClientCertificateRequestDto.md)|  | 

### Return type

[**CertificateDetailDto**](CertificateDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_certificate_objects**
> update_certificate_objects(uuid => $uuid, certificate_update_objects_dto => $certificate_update_objects_dto)

Update Certificate Objects

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $uuid = "uuid_example"; # string | Certificate UUID
my $certificate_update_objects_dto = WWW::OpenAPIClient::Object::CertificateUpdateObjectsDto->new(); # CertificateUpdateObjectsDto | 

eval {
    $api_instance->update_certificate_objects(uuid => $uuid, certificate_update_objects_dto => $certificate_update_objects_dto);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->update_certificate_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Certificate UUID | 
 **certificate_update_objects_dto** | [**CertificateUpdateObjectsDto**](CertificateUpdateObjectsDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload**
> UuidDto upload(upload_certificate_request_dto => $upload_certificate_request_dto)

Upload a new Certificate

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CertificateInventoryApi;
my $api_instance = WWW::OpenAPIClient::CertificateInventoryApi->new(
);

my $upload_certificate_request_dto = WWW::OpenAPIClient::Object::UploadCertificateRequestDto->new(); # UploadCertificateRequestDto | 

eval {
    my $result = $api_instance->upload(upload_certificate_request_dto => $upload_certificate_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CertificateInventoryApi->upload: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_certificate_request_dto** | [**UploadCertificateRequestDto**](UploadCertificateRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

