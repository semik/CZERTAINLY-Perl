# WWW::OpenAPIClient::CustomAttributesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CustomAttributesApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_custom_attributes**](CustomAttributesApi.md#bulk_delete_custom_attributes) | **DELETE** /v1/attributes/custom | Delete multiple Custom Attributes
[**bulk_disable_custom_attributes**](CustomAttributesApi.md#bulk_disable_custom_attributes) | **PATCH** /v1/attributes/custom/disable | Disable multiple Custom Attributes
[**bulk_enable_custom_attributes**](CustomAttributesApi.md#bulk_enable_custom_attributes) | **PATCH** /v1/attributes/custom/enable | Enable multiple Custom Attributes
[**create_custom_attribute**](CustomAttributesApi.md#create_custom_attribute) | **POST** /v1/attributes/custom | Create Custom Attribute
[**delete_attribute_content_for_resource**](CustomAttributesApi.md#delete_attribute_content_for_resource) | **DELETE** /v1/attributes/custom/resources/{resourceName}/objects/{objectUuid}/{attributeUuid} | Delete Value of a Custom Attribute for a Resource
[**delete_custom_attribute**](CustomAttributesApi.md#delete_custom_attribute) | **DELETE** /v1/attributes/custom/{uuid} | Delete Custom Attribute
[**disable_custom_attribute**](CustomAttributesApi.md#disable_custom_attribute) | **PATCH** /v1/attributes/custom/{uuid}/disable | Disable Custom Attribute
[**edit_custom_attribute**](CustomAttributesApi.md#edit_custom_attribute) | **PUT** /v1/attributes/custom/{uuid} | Edit Custom Attribute
[**enable_custom_attribute**](CustomAttributesApi.md#enable_custom_attribute) | **PATCH** /v1/attributes/custom/{uuid}/enable | Enable Custom Attribute
[**get_custom_attribute**](CustomAttributesApi.md#get_custom_attribute) | **GET** /v1/attributes/custom/{uuid} | Custom Attribute details
[**get_resource_custom_attributes**](CustomAttributesApi.md#get_resource_custom_attributes) | **GET** /v1/attributes/custom/resources/{resource} | Get Custom Attributes for a resource
[**get_resources**](CustomAttributesApi.md#get_resources) | **GET** /v1/attributes/custom/resources | Get available resources for Custom Attributes
[**list_custom_attributes**](CustomAttributesApi.md#list_custom_attributes) | **GET** /v1/attributes/custom | List Custom Attributes
[**update_attribute_content_for_resource**](CustomAttributesApi.md#update_attribute_content_for_resource) | **PATCH** /v1/attributes/custom/resources/{resourceName}/objects/{objectUuid}/{attributeUuid} | Update Value of a Custom Attribute for a Resource
[**update_resources**](CustomAttributesApi.md#update_resources) | **PATCH** /v1/attributes/custom/{uuid}/resources | Associate Custom Attribute to Resource


# **bulk_delete_custom_attributes**
> bulk_delete_custom_attributes(request_body => $request_body)

Delete multiple Custom Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Attribute UUIDs

eval {
    $api_instance->bulk_delete_custom_attributes(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->bulk_delete_custom_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Attribute UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_disable_custom_attributes**
> bulk_disable_custom_attributes(request_body => $request_body)

Disable multiple Custom Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Attribute UUIDs

eval {
    $api_instance->bulk_disable_custom_attributes(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->bulk_disable_custom_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Attribute UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_custom_attributes**
> bulk_enable_custom_attributes(request_body => $request_body)

Enable multiple Custom Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | Attribute UUIDs

eval {
    $api_instance->bulk_enable_custom_attributes(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->bulk_enable_custom_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Attribute UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_custom_attribute**
> UuidDto create_custom_attribute(custom_attribute_create_request_dto => $custom_attribute_create_request_dto)

Create Custom Attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $custom_attribute_create_request_dto = WWW::OpenAPIClient::Object::CustomAttributeCreateRequestDto->new(); # CustomAttributeCreateRequestDto | 

eval {
    my $result = $api_instance->create_custom_attribute(custom_attribute_create_request_dto => $custom_attribute_create_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->create_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_attribute_create_request_dto** | [**CustomAttributeCreateRequestDto**](CustomAttributeCreateRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_attribute_content_for_resource**
> ARRAY[ResponseAttributeDto] delete_attribute_content_for_resource(resource_name => $resource_name, object_uuid => $object_uuid, attribute_uuid => $attribute_uuid)

Delete Value of a Custom Attribute for a Resource

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $resource_name = new WWW::OpenAPIClient.Resource(); # Resource | Resource Type
my $object_uuid = "object_uuid_example"; # string | Object UUID
my $attribute_uuid = "attribute_uuid_example"; # string | Custom Attribute UUID

eval {
    my $result = $api_instance->delete_attribute_content_for_resource(resource_name => $resource_name, object_uuid => $object_uuid, attribute_uuid => $attribute_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->delete_attribute_content_for_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_name** | [**Resource**](.md)| Resource Type | 
 **object_uuid** | **string**| Object UUID | 
 **attribute_uuid** | **string**| Custom Attribute UUID | 

### Return type

[**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_custom_attribute**
> delete_custom_attribute(uuid => $uuid)

Delete Custom Attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | Custom Attribute UUID

eval {
    $api_instance->delete_custom_attribute(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->delete_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Custom Attribute UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_custom_attribute**
> disable_custom_attribute(uuid => $uuid)

Disable Custom Attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | Custom Attribute UUID

eval {
    $api_instance->disable_custom_attribute(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->disable_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Custom Attribute UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_custom_attribute**
> CustomAttributeDefinitionDetailDto edit_custom_attribute(uuid => $uuid, custom_attribute_update_request_dto => $custom_attribute_update_request_dto)

Edit Custom Attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | Attribute UUID
my $custom_attribute_update_request_dto = WWW::OpenAPIClient::Object::CustomAttributeUpdateRequestDto->new(); # CustomAttributeUpdateRequestDto | 

eval {
    my $result = $api_instance->edit_custom_attribute(uuid => $uuid, custom_attribute_update_request_dto => $custom_attribute_update_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->edit_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Attribute UUID | 
 **custom_attribute_update_request_dto** | [**CustomAttributeUpdateRequestDto**](CustomAttributeUpdateRequestDto.md)|  | 

### Return type

[**CustomAttributeDefinitionDetailDto**](CustomAttributeDefinitionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_custom_attribute**
> enable_custom_attribute(uuid => $uuid)

Enable Custom Attribute

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | Custom Attribute UUID

eval {
    $api_instance->enable_custom_attribute(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->enable_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Custom Attribute UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_custom_attribute**
> CustomAttributeDefinitionDetailDto get_custom_attribute(uuid => $uuid)

Custom Attribute details

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | 

eval {
    my $result = $api_instance->get_custom_attribute(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->get_custom_attribute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**|  | 

### Return type

[**CustomAttributeDefinitionDetailDto**](CustomAttributeDefinitionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resource_custom_attributes**
> ARRAY[CustomAttribute] get_resource_custom_attributes(resource => $resource)

Get Custom Attributes for a resource

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $resource = new WWW::OpenAPIClient.Resource(); # Resource | Resource Name

eval {
    my $result = $api_instance->get_resource_custom_attributes(resource => $resource);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->get_resource_custom_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource** | [**Resource**](.md)| Resource Name | 

### Return type

[**ARRAY[CustomAttribute]**](CustomAttribute.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_resources**
> ARRAY[Resource] get_resources()

Get available resources for Custom Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);


eval {
    my $result = $api_instance->get_resources();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->get_resources: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[Resource]**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_custom_attributes**
> ARRAY[CustomAttributeDefinitionDto] list_custom_attributes(attribute_content_type => $attribute_content_type)

List Custom Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $attribute_content_type = new WWW::OpenAPIClient.AttributeContentType(); # AttributeContentType | 

eval {
    my $result = $api_instance->list_custom_attributes(attribute_content_type => $attribute_content_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->list_custom_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_content_type** | [**AttributeContentType**](.md)|  | [optional] 

### Return type

[**ARRAY[CustomAttributeDefinitionDto]**](CustomAttributeDefinitionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_attribute_content_for_resource**
> ARRAY[ResponseAttributeDto] update_attribute_content_for_resource(resource_name => $resource_name, object_uuid => $object_uuid, attribute_uuid => $attribute_uuid, base_attribute_content_dto => $base_attribute_content_dto)

Update Value of a Custom Attribute for a Resource

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $resource_name = new WWW::OpenAPIClient.Resource(); # Resource | Resource Type
my $object_uuid = "object_uuid_example"; # string | Object UUID
my $attribute_uuid = "attribute_uuid_example"; # string | Custom Attribute UUID
my $base_attribute_content_dto = [WWW::OpenAPIClient::Object::ARRAY[BaseAttributeContentDto]->new()]; # ARRAY[BaseAttributeContentDto] | 

eval {
    my $result = $api_instance->update_attribute_content_for_resource(resource_name => $resource_name, object_uuid => $object_uuid, attribute_uuid => $attribute_uuid, base_attribute_content_dto => $base_attribute_content_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->update_attribute_content_for_resource: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_name** | [**Resource**](.md)| Resource Type | 
 **object_uuid** | **string**| Object UUID | 
 **attribute_uuid** | **string**| Custom Attribute UUID | 
 **base_attribute_content_dto** | [**ARRAY[BaseAttributeContentDto]**](BaseAttributeContentDto.md)|  | 

### Return type

[**ARRAY[ResponseAttributeDto]**](ResponseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_resources**
> update_resources(uuid => $uuid, request_body => $request_body)

Associate Custom Attribute to Resource

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CustomAttributesApi;
my $api_instance = WWW::OpenAPIClient::CustomAttributesApi->new(
);

my $uuid = "uuid_example"; # string | Custom Attribute UUID
my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | List of Resources

eval {
    $api_instance->update_resources(uuid => $uuid, request_body => $request_body);
};
if ($@) {
    warn "Exception when calling CustomAttributesApi->update_resources: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Custom Attribute UUID | 
 **request_body** | [**ARRAY[string]**](string.md)| List of Resources | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

