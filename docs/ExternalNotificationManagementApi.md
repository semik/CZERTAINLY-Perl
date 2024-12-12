# CZERTAINLY::ExternalNotificationManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ExternalNotificationManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_notification_instance**](ExternalNotificationManagementApi.md#create_notification_instance) | **POST** /v1/notificationInstances | Add Notification instance
[**delete_notification_instance**](ExternalNotificationManagementApi.md#delete_notification_instance) | **DELETE** /v1/notificationInstances/{uuid} | Delete Notification instance
[**edit_notification_instance**](ExternalNotificationManagementApi.md#edit_notification_instance) | **PUT** /v1/notificationInstances/{uuid} | Edit Notification instance
[**get_notification_instance**](ExternalNotificationManagementApi.md#get_notification_instance) | **GET** /v1/notificationInstances/{uuid} | Details of an Notification instance
[**list_mapping_attributes**](ExternalNotificationManagementApi.md#list_mapping_attributes) | **GET** /v1/notificationInstances/attributes/mapping/{connectorUuid}/{kind} | List of mapping attributes
[**list_notification_instances**](ExternalNotificationManagementApi.md#list_notification_instances) | **GET** /v1/notificationInstances | List of available Notification instances


# **create_notification_instance**
> UuidDto create_notification_instance(notification_instance_request_dto => $notification_instance_request_dto)

Add Notification instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);

my $notification_instance_request_dto = CZERTAINLY::Object::NotificationInstanceRequestDto->new(); # NotificationInstanceRequestDto | 

eval {
    my $result = $api_instance->create_notification_instance(notification_instance_request_dto => $notification_instance_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->create_notification_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_instance_request_dto** | [**NotificationInstanceRequestDto**](NotificationInstanceRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_notification_instance**
> delete_notification_instance(uuid => $uuid)

Delete Notification instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);

my $uuid = "uuid_example"; # string | Notification instance UUID

eval {
    $api_instance->delete_notification_instance(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->delete_notification_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Notification instance UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_notification_instance**
> NotificationInstanceDto edit_notification_instance(uuid => $uuid, notification_instance_update_request_dto => $notification_instance_update_request_dto)

Edit Notification instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);

my $uuid = "uuid_example"; # string | Notification instance UUID
my $notification_instance_update_request_dto = CZERTAINLY::Object::NotificationInstanceUpdateRequestDto->new(); # NotificationInstanceUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_notification_instance(uuid => $uuid, notification_instance_update_request_dto => $notification_instance_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->edit_notification_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Notification instance UUID | 
 **notification_instance_update_request_dto** | [**NotificationInstanceUpdateRequestDto**](NotificationInstanceUpdateRequestDto.md)|  | 

### Return type

[**NotificationInstanceDto**](NotificationInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_notification_instance**
> NotificationInstanceDto get_notification_instance(uuid => $uuid)

Details of an Notification instance

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);

my $uuid = "uuid_example"; # string | Notification instance UUID

eval {
    my $result = $api_instance->get_notification_instance(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->get_notification_instance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Notification instance UUID | 

### Return type

[**NotificationInstanceDto**](NotificationInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_mapping_attributes**
> ARRAY[DataAttribute] list_mapping_attributes(connector_uuid => $connector_uuid, kind => $kind)

List of mapping attributes

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);

my $connector_uuid = "connector_uuid_example"; # string | Connector UUID
my $kind = "kind_example"; # string | Kind

eval {
    my $result = $api_instance->list_mapping_attributes(connector_uuid => $connector_uuid, kind => $kind);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->list_mapping_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connector_uuid** | **string**| Connector UUID | 
 **kind** | **string**| Kind | 

### Return type

[**ARRAY[DataAttribute]**](DataAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_notification_instances**
> ARRAY[NotificationInstanceDto] list_notification_instances()

List of available Notification instances

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ExternalNotificationManagementApi;
my $api_instance = CZERTAINLY::ExternalNotificationManagementApi->new(
);


eval {
    my $result = $api_instance->list_notification_instances();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalNotificationManagementApi->list_notification_instances: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[NotificationInstanceDto]**](NotificationInstanceDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

