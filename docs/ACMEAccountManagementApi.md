# CZERTAINLY::ACMEAccountManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ACMEAccountManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_disable_acme_account**](ACMEAccountManagementApi.md#bulk_disable_acme_account) | **PATCH** /v1/acmeAccounts/disable | Disable multiple ACME Accounts
[**bulk_enable_acme_account**](ACMEAccountManagementApi.md#bulk_enable_acme_account) | **PATCH** /v1/acmeAccounts/enable | Enable multiple ACME Accounts
[**bulk_revoke_acme_account**](ACMEAccountManagementApi.md#bulk_revoke_acme_account) | **PUT** /v1/acmeAccounts/revoke | Revoke multiple ACME Accounts
[**disable_acme_account**](ACMEAccountManagementApi.md#disable_acme_account) | **PATCH** /v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}/disable | Disable ACME Account
[**enable_acme_account**](ACMEAccountManagementApi.md#enable_acme_account) | **PATCH** /v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}/enable | Enable ACME Account
[**get_acme_account**](ACMEAccountManagementApi.md#get_acme_account) | **GET** /v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid} | Details of ACME Account
[**list_acme_accounts**](ACMEAccountManagementApi.md#list_acme_accounts) | **GET** /v1/acmeAccounts | List ACME Accounts
[**revoke_acme_account**](ACMEAccountManagementApi.md#revoke_acme_account) | **POST** /v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid} | Revoke ACME Account


# **bulk_disable_acme_account**
> bulk_disable_acme_account(request_body => $request_body)

Disable multiple ACME Accounts

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Account UUIDs

eval {
    $api_instance->bulk_disable_acme_account(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->bulk_disable_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Account UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_acme_account**
> bulk_enable_acme_account(request_body => $request_body)

Enable multiple ACME Accounts

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Account UUIDs

eval {
    $api_instance->bulk_enable_acme_account(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->bulk_enable_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Account UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_revoke_acme_account**
> bulk_revoke_acme_account(request_body => $request_body)

Revoke multiple ACME Accounts

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | ACME Account UUIDs

eval {
    $api_instance->bulk_revoke_acme_account(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->bulk_revoke_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| ACME Account UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_acme_account**
> disable_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid)

Disable ACME Account

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $acme_profile_uuid = "acme_profile_uuid_example"; # string | ACME Profile UUID
my $acme_account_uuid = "acme_account_uuid_example"; # string | ACME Account UUID

eval {
    $api_instance->disable_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->disable_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acme_profile_uuid** | **string**| ACME Profile UUID | 
 **acme_account_uuid** | **string**| ACME Account UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_acme_account**
> enable_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid)

Enable ACME Account

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $acme_profile_uuid = "acme_profile_uuid_example"; # string | ACME Profile UUID
my $acme_account_uuid = "acme_account_uuid_example"; # string | ACME Account UUID

eval {
    $api_instance->enable_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->enable_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acme_profile_uuid** | **string**| ACME Profile UUID | 
 **acme_account_uuid** | **string**| ACME Account UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_acme_account**
> AcmeAccountResponseDto get_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid)

Details of ACME Account

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $acme_profile_uuid = "acme_profile_uuid_example"; # string | ACME Profile UUID
my $acme_account_uuid = "acme_account_uuid_example"; # string | ACME Account UUID

eval {
    my $result = $api_instance->get_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->get_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acme_profile_uuid** | **string**| ACME Profile UUID | 
 **acme_account_uuid** | **string**| ACME Account UUID | 

### Return type

[**AcmeAccountResponseDto**](AcmeAccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_acme_accounts**
> ARRAY[AcmeAccountListResponseDto] list_acme_accounts()

List ACME Accounts

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);


eval {
    my $result = $api_instance->list_acme_accounts();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->list_acme_accounts: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[AcmeAccountListResponseDto]**](AcmeAccountListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_acme_account**
> revoke_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid)

Revoke ACME Account

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ACMEAccountManagementApi;
my $api_instance = CZERTAINLY::ACMEAccountManagementApi->new(
);

my $acme_profile_uuid = "acme_profile_uuid_example"; # string | ACME Profile UUID
my $acme_account_uuid = "acme_account_uuid_example"; # string | ACME Account UUID

eval {
    $api_instance->revoke_acme_account(acme_profile_uuid => $acme_profile_uuid, acme_account_uuid => $acme_account_uuid);
};
if ($@) {
    warn "Exception when calling ACMEAccountManagementApi->revoke_acme_account: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acme_profile_uuid** | **string**| ACME Profile UUID | 
 **acme_account_uuid** | **string**| ACME Account UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

