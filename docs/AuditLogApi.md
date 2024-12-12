# WWW::OpenAPIClient::AuditLogApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AuditLogApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_audit_logs**](AuditLogApi.md#export_audit_logs) | **POST** /v1/auditLogs/export | Export Audit logs
[**get_searchable_field_information5**](AuditLogApi.md#get_searchable_field_information5) | **GET** /v1/auditLogs/search | Get Audit logs searchable fields information
[**list_audit_logs**](AuditLogApi.md#list_audit_logs) | **POST** /v1/auditLogs | List Audit logs
[**purge_audit_logs**](AuditLogApi.md#purge_audit_logs) | **POST** /v1/auditLogs/purge | Purge Audit logs


# **export_audit_logs**
> string export_audit_logs(search_filter_request_dto => $search_filter_request_dto)

Export Audit logs

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuditLogApi;
my $api_instance = WWW::OpenAPIClient::AuditLogApi->new(
);

my $search_filter_request_dto = [WWW::OpenAPIClient::Object::ARRAY[SearchFilterRequestDto]->new()]; # ARRAY[SearchFilterRequestDto] | 

eval {
    my $result = $api_instance->export_audit_logs(search_filter_request_dto => $search_filter_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuditLogApi->export_audit_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_filter_request_dto** | [**ARRAY[SearchFilterRequestDto]**](SearchFilterRequestDto.md)|  | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_searchable_field_information5**
> ARRAY[SearchFieldDataByGroupDto] get_searchable_field_information5()

Get Audit logs searchable fields information

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuditLogApi;
my $api_instance = WWW::OpenAPIClient::AuditLogApi->new(
);


eval {
    my $result = $api_instance->get_searchable_field_information5();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuditLogApi->get_searchable_field_information5: $@\n";
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

# **list_audit_logs**
> AuditLogResponseDto list_audit_logs(search_request_dto => $search_request_dto)

List Audit logs

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuditLogApi;
my $api_instance = WWW::OpenAPIClient::AuditLogApi->new(
);

my $search_request_dto = WWW::OpenAPIClient::Object::SearchRequestDto->new(); # SearchRequestDto | 

eval {
    my $result = $api_instance->list_audit_logs(search_request_dto => $search_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AuditLogApi->list_audit_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_request_dto** | [**SearchRequestDto**](SearchRequestDto.md)|  | 

### Return type

[**AuditLogResponseDto**](AuditLogResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purge_audit_logs**
> purge_audit_logs(search_filter_request_dto => $search_filter_request_dto)

Purge Audit logs

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AuditLogApi;
my $api_instance = WWW::OpenAPIClient::AuditLogApi->new(
);

my $search_filter_request_dto = [WWW::OpenAPIClient::Object::ARRAY[SearchFilterRequestDto]->new()]; # ARRAY[SearchFilterRequestDto] | 

eval {
    $api_instance->purge_audit_logs(search_filter_request_dto => $search_filter_request_dto);
};
if ($@) {
    warn "Exception when calling AuditLogApi->purge_audit_logs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_filter_request_dto** | [**ARRAY[SearchFilterRequestDto]**](SearchFilterRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

