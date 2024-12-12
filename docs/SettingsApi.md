# CZERTAINLY::SettingsApi

## Load the API package
```perl
use CZERTAINLY::Object::SettingsApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_notifications_settings**](SettingsApi.md#get_notifications_settings) | **GET** /v1/settings/notifications | Get notification settings
[**get_platform_settings**](SettingsApi.md#get_platform_settings) | **GET** /v1/settings/platform | Get platform settings
[**update_notifications_settings**](SettingsApi.md#update_notifications_settings) | **PUT** /v1/settings/notifications | Update notifications setting
[**update_platform_settings**](SettingsApi.md#update_platform_settings) | **PUT** /v1/settings/platform | Update platform setting


# **get_notifications_settings**
> NotificationSettingsDto get_notifications_settings()

Get notification settings

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SettingsApi;
my $api_instance = CZERTAINLY::SettingsApi->new(
);


eval {
    my $result = $api_instance->get_notifications_settings();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SettingsApi->get_notifications_settings: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationSettingsDto**](NotificationSettingsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_platform_settings**
> PlatformSettingsDto get_platform_settings()

Get platform settings

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SettingsApi;
my $api_instance = CZERTAINLY::SettingsApi->new(
);


eval {
    my $result = $api_instance->get_platform_settings();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SettingsApi->get_platform_settings: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PlatformSettingsDto**](PlatformSettingsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_notifications_settings**
> update_notifications_settings(notification_settings_dto => $notification_settings_dto)

Update notifications setting

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SettingsApi;
my $api_instance = CZERTAINLY::SettingsApi->new(
);

my $notification_settings_dto = CZERTAINLY::Object::NotificationSettingsDto->new(); # NotificationSettingsDto | 

eval {
    $api_instance->update_notifications_settings(notification_settings_dto => $notification_settings_dto);
};
if ($@) {
    warn "Exception when calling SettingsApi->update_notifications_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notification_settings_dto** | [**NotificationSettingsDto**](NotificationSettingsDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_platform_settings**
> update_platform_settings(platform_settings_dto => $platform_settings_dto)

Update platform setting

### Example
```perl
use Data::Dumper;
use CZERTAINLY::SettingsApi;
my $api_instance = CZERTAINLY::SettingsApi->new(
);

my $platform_settings_dto = CZERTAINLY::Object::PlatformSettingsDto->new(); # PlatformSettingsDto | 

eval {
    $api_instance->update_platform_settings(platform_settings_dto => $platform_settings_dto);
};
if ($@) {
    warn "Exception when calling SettingsApi->update_platform_settings: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform_settings_dto** | [**PlatformSettingsDto**](PlatformSettingsDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

