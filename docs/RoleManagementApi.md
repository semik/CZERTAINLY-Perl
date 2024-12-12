# WWW::OpenAPIClient::RoleManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::RoleManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_resource_permission_objects**](RoleManagementApi.md#add_resource_permission_objects) | **POST** /v1/roles/{roleUuid}/permissions/{resourceUuid}/objects | Add Resource Objects to a Role
[**create_role**](RoleManagementApi.md#create_role) | **POST** /v1/roles | Create Role
[**delete_role**](RoleManagementApi.md#delete_role) | **DELETE** /v1/roles/{roleUuid} | Delete Role
[**get_resource_permission_objects**](RoleManagementApi.md#get_resource_permission_objects) | **GET** /v1/roles/{roleUuid}/permissions/{resourceUuid}/objects | Get Resource Objects of a Role
[**get_role**](RoleManagementApi.md#get_role) | **GET** /v1/roles/{roleUuid} | Get role details
[**get_role_permissions**](RoleManagementApi.md#get_role_permissions) | **GET** /v1/roles/{roleUuid}/permissions | Get Permissions of a Role
[**get_role_resource_permissions**](RoleManagementApi.md#get_role_resource_permissions) | **GET** /v1/roles/{roleUuid}/permissions/{resourceUuid} | Get Resources of a Role
[**get_role_users**](RoleManagementApi.md#get_role_users) | **GET** /v1/roles/{roleUuid}/users | Get Role Users
[**list_roles**](RoleManagementApi.md#list_roles) | **GET** /v1/roles | List Roles
[**remove_resource_permission_objects**](RoleManagementApi.md#remove_resource_permission_objects) | **DELETE** /v1/roles/{roleUuid}/permissions/{resourceUuid}/objects/{objectUuid} | Update Resource Objects to a Role
[**save_permissions**](RoleManagementApi.md#save_permissions) | **POST** /v1/roles/{roleUuid}/permissions | Add permissions to Role
[**update_resource_permission_objects**](RoleManagementApi.md#update_resource_permission_objects) | **PUT** /v1/roles/{roleUuid}/permissions/{resourceUuid}/objects/{objectUuid} | Update Resource Objects to a Role
[**update_role**](RoleManagementApi.md#update_role) | **PUT** /v1/roles/{roleUuid} | Update Role
[**update_users**](RoleManagementApi.md#update_users) | **PATCH** /v1/roles/{roleUuid}/users | Add users to Role


# **add_resource_permission_objects**
> add_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_permissions_request_dto => $object_permissions_request_dto)

Add Resource Objects to a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $resource_uuid = "resource_uuid_example"; # string | Resource UUID
my $object_permissions_request_dto = [WWW::OpenAPIClient::Object::ARRAY[ObjectPermissionsRequestDto]->new()]; # ARRAY[ObjectPermissionsRequestDto] | 

eval {
    $api_instance->add_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_permissions_request_dto => $object_permissions_request_dto);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->add_resource_permission_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **resource_uuid** | **string**| Resource UUID | 
 **object_permissions_request_dto** | [**ARRAY[ObjectPermissionsRequestDto]**](ObjectPermissionsRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_role**
> RoleDetailDto create_role(role_request_dto => $role_request_dto)

Create Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_request_dto = WWW::OpenAPIClient::Object::RoleRequestDto->new(); # RoleRequestDto | 

eval {
    my $result = $api_instance->create_role(role_request_dto => $role_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->create_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_request_dto** | [**RoleRequestDto**](RoleRequestDto.md)|  | 

### Return type

[**RoleDetailDto**](RoleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_role**
> delete_role(role_uuid => $role_uuid)

Delete Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    $api_instance->delete_role(role_uuid => $role_uuid);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->delete_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_permission_objects**
> ARRAY[ObjectPermissionsDto] get_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid)

Get Resource Objects of a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $resource_uuid = "resource_uuid_example"; # string | Resource UUID

eval {
    my $result = $api_instance->get_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->get_resource_permission_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **resource_uuid** | **string**| Resource UUID | 

### Return type

[**ARRAY[ObjectPermissionsDto]**](ObjectPermissionsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role**
> RoleDetailDto get_role(role_uuid => $role_uuid)

Get role details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    my $result = $api_instance->get_role(role_uuid => $role_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->get_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 

### Return type

[**RoleDetailDto**](RoleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role_permissions**
> SubjectPermissionsDto get_role_permissions(role_uuid => $role_uuid)

Get Permissions of a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    my $result = $api_instance->get_role_permissions(role_uuid => $role_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->get_role_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 

### Return type

[**SubjectPermissionsDto**](SubjectPermissionsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role_resource_permissions**
> ResourcePermissionsDto get_role_resource_permissions(role_uuid => $role_uuid, resource_uuid => $resource_uuid)

Get Resources of a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $resource_uuid = "resource_uuid_example"; # string | Resource UUID

eval {
    my $result = $api_instance->get_role_resource_permissions(role_uuid => $role_uuid, resource_uuid => $resource_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->get_role_resource_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **resource_uuid** | **string**| Resource UUID | 

### Return type

[**ResourcePermissionsDto**](ResourcePermissionsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role_users**
> ARRAY[UserDto] get_role_users(role_uuid => $role_uuid)

Get Role Users

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID

eval {
    my $result = $api_instance->get_role_users(role_uuid => $role_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->get_role_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 

### Return type

[**ARRAY[UserDto]**](UserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_roles**
> ARRAY[RoleDto] list_roles()

List Roles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);


eval {
    my $result = $api_instance->list_roles();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->list_roles: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[RoleDto]**](RoleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_resource_permission_objects**
> remove_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_uuid => $object_uuid)

Update Resource Objects to a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $resource_uuid = "resource_uuid_example"; # string | Resource UUID
my $object_uuid = "object_uuid_example"; # string | Object UUID

eval {
    $api_instance->remove_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_uuid => $object_uuid);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->remove_resource_permission_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **resource_uuid** | **string**| Resource UUID | 
 **object_uuid** | **string**| Object UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save_permissions**
> SubjectPermissionsDto save_permissions(role_uuid => $role_uuid, role_permissions_request_dto => $role_permissions_request_dto)

Add permissions to Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $role_permissions_request_dto = WWW::OpenAPIClient::Object::RolePermissionsRequestDto->new(); # RolePermissionsRequestDto | 

eval {
    my $result = $api_instance->save_permissions(role_uuid => $role_uuid, role_permissions_request_dto => $role_permissions_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->save_permissions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **role_permissions_request_dto** | [**RolePermissionsRequestDto**](RolePermissionsRequestDto.md)|  | 

### Return type

[**SubjectPermissionsDto**](SubjectPermissionsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_resource_permission_objects**
> update_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_uuid => $object_uuid, object_permissions_request_dto => $object_permissions_request_dto)

Update Resource Objects to a Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $resource_uuid = "resource_uuid_example"; # string | Resource UUID
my $object_uuid = "object_uuid_example"; # string | Object UUID
my $object_permissions_request_dto = WWW::OpenAPIClient::Object::ObjectPermissionsRequestDto->new(); # ObjectPermissionsRequestDto | 

eval {
    $api_instance->update_resource_permission_objects(role_uuid => $role_uuid, resource_uuid => $resource_uuid, object_uuid => $object_uuid, object_permissions_request_dto => $object_permissions_request_dto);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->update_resource_permission_objects: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **resource_uuid** | **string**| Resource UUID | 
 **object_uuid** | **string**| Object UUID | 
 **object_permissions_request_dto** | [**ObjectPermissionsRequestDto**](ObjectPermissionsRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_role**
> RoleDetailDto update_role(role_uuid => $role_uuid, role_request_dto => $role_request_dto)

Update Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $role_request_dto = WWW::OpenAPIClient::Object::RoleRequestDto->new(); # RoleRequestDto | 

eval {
    my $result = $api_instance->update_role(role_uuid => $role_uuid, role_request_dto => $role_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->update_role: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **role_request_dto** | [**RoleRequestDto**](RoleRequestDto.md)|  | 

### Return type

[**RoleDetailDto**](RoleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_users**
> RoleDetailDto update_users(role_uuid => $role_uuid, request_body => $request_body)

Add users to Role

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RoleManagementApi;
my $api_instance = WWW::OpenAPIClient::RoleManagementApi->new(
);

my $role_uuid = "role_uuid_example"; # string | Role UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | User UUIDs

eval {
    my $result = $api_instance->update_users(role_uuid => $role_uuid, request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RoleManagementApi->update_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_uuid** | **string**| Role UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| User UUIDs | 

### Return type

[**RoleDetailDto**](RoleDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

