# WWW::OpenAPIClient::UserManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UserManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_role**](UserManagementApi.md#add_role) | **PUT** /v1/users/{userUuid}/roles/{roleUuid} | Add role to User
[**create_user**](UserManagementApi.md#create_user) | **POST** /v1/users | Create User
[**delete_user**](UserManagementApi.md#delete_user) | **DELETE** /v1/users/{userUuid} | Delete User
[**disable_user**](UserManagementApi.md#disable_user) | **PATCH** /v1/users/{userUuid}/disable | Disable User
[**enable_user**](UserManagementApi.md#enable_user) | **PATCH** /v1/users/{userUuid}/enable | Enable User
[**get_permissions**](UserManagementApi.md#get_permissions) | **GET** /v1/users/{userUuid}/permissions | Get User permissions
[**get_user**](UserManagementApi.md#get_user) | **GET** /v1/users/{userUuid} | Get user details
[**get_user_roles**](UserManagementApi.md#get_user_roles) | **GET** /v1/users/{userUuid}/roles | Get User Roles
[**identify_user**](UserManagementApi.md#identify_user) | **POST** /v1/users/identify | Identify User
[**list_users**](UserManagementApi.md#list_users) | **GET** /v1/users | List Users
[**remove_role**](UserManagementApi.md#remove_role) | **DELETE** /v1/users/{userUuid}/roles/{roleUuid} | Remove role from User
[**update_roles**](UserManagementApi.md#update_roles) | **PATCH** /v1/users/{userUuid}/roles | Add roles to User
[**update_user**](UserManagementApi.md#update_user) | **PUT** /v1/users/{userUuid} | Update User


# **add_role**
> UserDetailDto add_role(user_uuid => $user_uuid, role_uuid => $role_uuid)

Add role to User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID
my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    my $result = $api_instance->add_role(user_uuid => $user_uuid, role_uuid => $role_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->add_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 
 **role_uuid** | **string**| Role UUID | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_user**
> UserDetailDto create_user(add_user_request_dto => $add_user_request_dto)

Create User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $add_user_request_dto = WWW::OpenAPIClient::Object::AddUserRequestDto->new(); # AddUserRequestDto | 

eval {
    my $result = $api_instance->create_user(add_user_request_dto => $add_user_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->create_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_user_request_dto** | [**AddUserRequestDto**](AddUserRequestDto.md)|  | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(user_uuid => $user_uuid)

Delete User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    $api_instance->delete_user(user_uuid => $user_uuid);
};
if ($@) {
    warn "Exception when calling UserManagementApi->delete_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_user**
> UserDetailDto disable_user(user_uuid => $user_uuid)

Disable User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    my $result = $api_instance->disable_user(user_uuid => $user_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->disable_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_user**
> UserDetailDto enable_user(user_uuid => $user_uuid)

Enable User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    my $result = $api_instance->enable_user(user_uuid => $user_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->enable_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permissions**
> SubjectPermissionsDto get_permissions(user_uuid => $user_uuid)

Get User permissions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    my $result = $api_instance->get_permissions(user_uuid => $user_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->get_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

[**SubjectPermissionsDto**](SubjectPermissionsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> UserDetailDto get_user(user_uuid => $user_uuid)

Get user details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    my $result = $api_instance->get_user(user_uuid => $user_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->get_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_roles**
> ARRAY[RoleDto] get_user_roles(user_uuid => $user_uuid)

Get User Roles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID

eval {
    my $result = $api_instance->get_user_roles(user_uuid => $user_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->get_user_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 

### Return type

[**ARRAY[RoleDto]**](RoleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **identify_user**
> UserDetailDto identify_user(user_identification_request_dto => $user_identification_request_dto)

Identify User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_identification_request_dto = WWW::OpenAPIClient::Object::UserIdentificationRequestDto->new(); # UserIdentificationRequestDto | 

eval {
    my $result = $api_instance->identify_user(user_identification_request_dto => $user_identification_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->identify_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_identification_request_dto** | [**UserIdentificationRequestDto**](UserIdentificationRequestDto.md)|  | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_users**
> ARRAY[UserDto] list_users()

List Users

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);


eval {
    my $result = $api_instance->list_users();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->list_users: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UserDto]**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_role**
> UserDetailDto remove_role(user_uuid => $user_uuid, role_uuid => $role_uuid)

Remove role from User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID
my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    my $result = $api_instance->remove_role(user_uuid => $user_uuid, role_uuid => $role_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->remove_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 
 **role_uuid** | **string**| Role UUID | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_roles**
> UserDetailDto update_roles(user_uuid => $user_uuid, request_body => $request_body)

Add roles to User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Role UUIDs

eval {
    my $result = $api_instance->update_roles(user_uuid => $user_uuid, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->update_roles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| Role UUIDs | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UserDetailDto update_user(user_uuid => $user_uuid, update_user_request_dto => $update_user_request_dto)

Update User

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UserManagementApi;
my $api_instance = WWW::OpenAPIClient::UserManagementApi->new(
);

my $user_uuid = "user_uuid_example"; # string | User UUID
my $update_user_request_dto = WWW::OpenAPIClient::Object::UpdateUserRequestDto->new(); # UpdateUserRequestDto | 

eval {
    my $result = $api_instance->update_user(user_uuid => $user_uuid, update_user_request_dto => $update_user_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserManagementApi->update_user: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_uuid** | **string**| User UUID | 
 **update_user_request_dto** | [**UpdateUserRequestDto**](UpdateUserRequestDto.md)|  | 

### Return type

[**UserDetailDto**](UserDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

