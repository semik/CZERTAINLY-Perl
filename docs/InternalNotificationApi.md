# WWW::OpenAPIClient::InternalNotificationApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::InternalNotificationApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_notification**](InternalNotificationApi.md#bulk_delete_notification) | **DELETE** /v1/notifications | Delete a list of notifications for logged user
[**bulk_mark_notification_as_read**](InternalNotificationApi.md#bulk_mark_notification_as_read) | **PATCH** /v1/notifications | Mark a list of notifications as read for logged user
[**delete_notification**](InternalNotificationApi.md#delete_notification) | **DELETE** /v1/notifications/{uuid} | Delete a notification for logged user
[**list_notifications**](InternalNotificationApi.md#list_notifications) | **GET** /v1/notifications | List notifications for logged user
[**mark_notification_as_read**](InternalNotificationApi.md#mark_notification_as_read) | **PATCH** /v1/notifications/{uuid} | Mark notification as read for logged user


# **bulk_delete_notification**
> bulk_delete_notification(request_body => $request_body)

Delete a list of notifications for logged user

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InternalNotificationApi;
my $api_instance = WWW::OpenAPIClient::InternalNotificationApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Notifications UUIDs

eval {
    $api_instance->bulk_delete_notification(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling InternalNotificationApi->bulk_delete_notification: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Notifications UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_mark_notification_as_read**
> bulk_mark_notification_as_read(request_body => $request_body)

Mark a list of notifications as read for logged user

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InternalNotificationApi;
my $api_instance = WWW::OpenAPIClient::InternalNotificationApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Notifications UUIDs

eval {
    $api_instance->bulk_mark_notification_as_read(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling InternalNotificationApi->bulk_mark_notification_as_read: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Notifications UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_notification**
> delete_notification(uuid => $uuid)

Delete a notification for logged user

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InternalNotificationApi;
my $api_instance = WWW::OpenAPIClient::InternalNotificationApi->new(
);

my $uuid = "uuid_example"; # string | Notification UUID

eval {
    $api_instance->delete_notification(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling InternalNotificationApi->delete_notification: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Notification UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_notifications**
> NotificationResponseDto list_notifications(request => $request)

List notifications for logged user

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InternalNotificationApi;
my $api_instance = WWW::OpenAPIClient::InternalNotificationApi->new(
);

my $request = new WWW::OpenAPIClient.NotificationRequestDto(); # NotificationRequestDto | Show only unread notifications

eval {
    my $result = $api_instance->list_notifications(request => $request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling InternalNotificationApi->list_notifications: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**NotificationRequestDto**](.md)| Show only unread notifications | 

### Return type

[**NotificationResponseDto**](NotificationResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mark_notification_as_read**
> mark_notification_as_read(uuid => $uuid)

Mark notification as read for logged user

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::InternalNotificationApi;
my $api_instance = WWW::OpenAPIClient::InternalNotificationApi->new(
);

my $uuid = "uuid_example"; # string | Notification UUID

eval {
    $api_instance->mark_notification_as_read(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling InternalNotificationApi->mark_notification_as_read: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Notification UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

