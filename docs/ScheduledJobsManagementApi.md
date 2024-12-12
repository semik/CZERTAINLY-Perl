# CZERTAINLY::ScheduledJobsManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ScheduledJobsManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_scheduled_job**](ScheduledJobsManagementApi.md#delete_scheduled_job) | **DELETE** /v1/scheduler/jobs/{uuid} | Delete Scheduled job
[**disable_scheduled_job**](ScheduledJobsManagementApi.md#disable_scheduled_job) | **PATCH** /v1/scheduler/jobs/{uuid}/disable | Disabling of Scheduled job
[**enable_scheduled_job**](ScheduledJobsManagementApi.md#enable_scheduled_job) | **PATCH** /v1/scheduler/jobs/{uuid}/enable | Enabling of Scheduled job
[**get_scheduled_job_detail**](ScheduledJobsManagementApi.md#get_scheduled_job_detail) | **GET** /v1/scheduler/jobs/{uuid} | Scheduled job detail
[**get_scheduled_job_history**](ScheduledJobsManagementApi.md#get_scheduled_job_history) | **GET** /v1/scheduler/jobs/{uuid}/history | Scheduled job history
[**list_scheduled_jobs**](ScheduledJobsManagementApi.md#list_scheduled_jobs) | **GET** /v1/scheduler/jobs | List of scheduled jobs
[**update_scheduled_job**](ScheduledJobsManagementApi.md#update_scheduled_job) | **PUT** /v1/scheduler/jobs/{uuid} | Edit Scheduled job


# **delete_scheduled_job**
> delete_scheduled_job(uuid => $uuid)

Delete Scheduled job

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $uuid = "uuid_example"; # string | Scheduled job UUID

eval {
    $api_instance->delete_scheduled_job(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->delete_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Scheduled job UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_scheduled_job**
> disable_scheduled_job(uuid => $uuid)

Disabling of Scheduled job

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $uuid = "uuid_example"; # string | Scheduled job UUID

eval {
    $api_instance->disable_scheduled_job(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->disable_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Scheduled job UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_scheduled_job**
> enable_scheduled_job(uuid => $uuid)

Enabling of Scheduled job

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $uuid = "uuid_example"; # string | Scheduled job UUID

eval {
    $api_instance->enable_scheduled_job(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->enable_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Scheduled job UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scheduled_job_detail**
> ScheduledJobDetailDto get_scheduled_job_detail(uuid => $uuid)

Scheduled job detail

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $uuid = "uuid_example"; # string | Scheduled job UUID

eval {
    my $result = $api_instance->get_scheduled_job_detail(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->get_scheduled_job_detail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Scheduled job UUID | 

### Return type

[**ScheduledJobDetailDto**](ScheduledJobDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scheduled_job_history**
> ScheduledJobHistoryResponseDto get_scheduled_job_history(pagination => $pagination, uuid => $uuid)

Scheduled job history

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $pagination = new CZERTAINLY.PaginationRequestDto(); # PaginationRequestDto | 
my $uuid = "uuid_example"; # string | Scheduled job UUID

eval {
    my $result = $api_instance->get_scheduled_job_history(pagination => $pagination, uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->get_scheduled_job_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagination** | [**PaginationRequestDto**](.md)|  | 
 **uuid** | **string**| Scheduled job UUID | 

### Return type

[**ScheduledJobHistoryResponseDto**](ScheduledJobHistoryResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_scheduled_jobs**
> ScheduledJobsResponseDto list_scheduled_jobs(pagination => $pagination)

List of scheduled jobs

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $pagination = new CZERTAINLY.PaginationRequestDto(); # PaginationRequestDto | 

eval {
    my $result = $api_instance->list_scheduled_jobs(pagination => $pagination);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->list_scheduled_jobs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagination** | [**PaginationRequestDto**](.md)|  | 

### Return type

[**ScheduledJobsResponseDto**](ScheduledJobsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_scheduled_job**
> ScheduledJobDetailDto update_scheduled_job(uuid => $uuid, update_scheduled_job => $update_scheduled_job)

Edit Scheduled job

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ScheduledJobsManagementApi;
my $api_instance = CZERTAINLY::ScheduledJobsManagementApi->new(
);

my $uuid = "uuid_example"; # string | Scheduled job UUID
my $update_scheduled_job = CZERTAINLY::Object::UpdateScheduledJob->new(); # UpdateScheduledJob | 

eval {
    my $result = $api_instance->update_scheduled_job(uuid => $uuid, update_scheduled_job => $update_scheduled_job);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScheduledJobsManagementApi->update_scheduled_job: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Scheduled job UUID | 
 **update_scheduled_job** | [**UpdateScheduledJob**](UpdateScheduledJob.md)|  | 

### Return type

[**ScheduledJobDetailDto**](ScheduledJobDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

