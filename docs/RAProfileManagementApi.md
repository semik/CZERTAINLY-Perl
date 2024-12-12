# WWW::OpenAPIClient::RAProfileManagementApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::RAProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_acme_for_ra_profile**](RAProfileManagementApi.md#activate_acme_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/acme/activate/{acmeProfileUuid} | Activate ACME for RA Profile
[**activate_cmp_for_ra_profile**](RAProfileManagementApi.md#activate_cmp_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/cmp/activate/{cmpProfileUuid} | Activate CMP for RA Profile
[**activate_scep_for_ra_profile**](RAProfileManagementApi.md#activate_scep_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/scep/activate/{scepProfileUuid} | Activate SCEP for RA Profile
[**associate_ra_profile_with_approval_profile**](RAProfileManagementApi.md#associate_ra_profile_with_approval_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/approvalProfiles/{approvalProfileUuid} | Associated RA profile with the Approval profile
[**bulk_delete_ra_profile**](RAProfileManagementApi.md#bulk_delete_ra_profile) | **DELETE** /v1/raProfiles | Delete multiple RA Profiles
[**bulk_disable_ra_profile**](RAProfileManagementApi.md#bulk_disable_ra_profile) | **PATCH** /v1/raProfiles/disable | Disable multiple RA Profiles
[**bulk_enable_ra_profile**](RAProfileManagementApi.md#bulk_enable_ra_profile) | **PATCH** /v1/raProfiles/enable | Enable multiple RA Profiles
[**check_ra_profile_compliance**](RAProfileManagementApi.md#check_ra_profile_compliance) | **POST** /v1/raProfiles/compliance | Initiate Certificate Compliance Check
[**create_ra_profile**](RAProfileManagementApi.md#create_ra_profile) | **POST** /v1/authorities/{authorityUuid}/raProfiles | Create RA Profile
[**deactivate_acme_for_ra_profile**](RAProfileManagementApi.md#deactivate_acme_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/acme/deactivate | Deactivate ACME for RA Profile
[**deactivate_cmp_for_ra_profile**](RAProfileManagementApi.md#deactivate_cmp_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/cmp/deactivate | Deactivate CMP for RA Profile
[**deactivate_scep_for_ra_profile**](RAProfileManagementApi.md#deactivate_scep_for_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/scep/deactivate | Deactivate SCEP for RA Profile
[**delete_ra_profile**](RAProfileManagementApi.md#delete_ra_profile) | **DELETE** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid} | Delete RA Profile
[**delete_ra_profile_without_authority**](RAProfileManagementApi.md#delete_ra_profile_without_authority) | **DELETE** /v1/raProfiles/{raProfileUuid} | Delete RA Profile
[**disable_ra_profile**](RAProfileManagementApi.md#disable_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/disable | Disable RA Profiles
[**disassociate_ra_profile_from_approval_profile**](RAProfileManagementApi.md#disassociate_ra_profile_from_approval_profile) | **DELETE** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/approvalProfiles/{approvalProfileUuid} | Disassociated RA profile with the Approval profile
[**edit_ra_profile**](RAProfileManagementApi.md#edit_ra_profile) | **PUT** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid} | Edit RA Profile
[**enable_ra_profile**](RAProfileManagementApi.md#enable_ra_profile) | **PATCH** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/enable | Enable RA Profiles
[**get_acme_for_ra_profile**](RAProfileManagementApi.md#get_acme_for_ra_profile) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/acme | Get ACME details for RA Profile
[**get_associated_approval_profiles**](RAProfileManagementApi.md#get_associated_approval_profiles) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/approvalProfiles | List of Approval profiles associated with the RAProfile
[**get_associated_compliance_profiles**](RAProfileManagementApi.md#get_associated_compliance_profiles) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/complianceProfiles | Get Compliance Profiles for an RA Profile
[**get_authority_certificate_chain**](RAProfileManagementApi.md#get_authority_certificate_chain) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/caCertificates | Retrieve certificates of authority belonging to RA profile
[**get_cmp_for_ra_profile**](RAProfileManagementApi.md#get_cmp_for_ra_profile) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/cmp | Get CMP details for RA Profile
[**get_ra_profile**](RAProfileManagementApi.md#get_ra_profile) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid} | Details of RA Profile
[**get_ra_profile_without_authority**](RAProfileManagementApi.md#get_ra_profile_without_authority) | **GET** /v1/raProfiles/{raProfileUuid} | Details of RA Profile
[**get_scep_for_ra_profile**](RAProfileManagementApi.md#get_scep_for_ra_profile) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/protocols/scep | Get SCEP details for RA Profile
[**list_ra_profile_issue_certificate_attributes**](RAProfileManagementApi.md#list_ra_profile_issue_certificate_attributes) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/issue | Get issue Certificate Attributes
[**list_ra_profile_revoke_certificate_attributes**](RAProfileManagementApi.md#list_ra_profile_revoke_certificate_attributes) | **GET** /v1/authorities/{authorityUuid}/raProfiles/{raProfileUuid}/attributes/revoke | Get revocation Attributes
[**list_ra_profiles**](RAProfileManagementApi.md#list_ra_profiles) | **GET** /v1/raProfiles | List of available RA Profiles


# **activate_acme_for_ra_profile**
> RaProfileAcmeDetailResponseDto activate_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, acme_profile_uuid => $acme_profile_uuid, activate_acme_for_ra_profile_request_dto => $activate_acme_for_ra_profile_request_dto)

Activate ACME for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $acme_profile_uuid = "acme_profile_uuid_example"; # string | ACME Profile UUID
my $activate_acme_for_ra_profile_request_dto = WWW::OpenAPIClient::Object::ActivateAcmeForRaProfileRequestDto->new(); # ActivateAcmeForRaProfileRequestDto | 

eval {
    my $result = $api_instance->activate_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, acme_profile_uuid => $acme_profile_uuid, activate_acme_for_ra_profile_request_dto => $activate_acme_for_ra_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->activate_acme_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **acme_profile_uuid** | **string**| ACME Profile UUID | 
 **activate_acme_for_ra_profile_request_dto** | [**ActivateAcmeForRaProfileRequestDto**](ActivateAcmeForRaProfileRequestDto.md)|  | 

### Return type

[**RaProfileAcmeDetailResponseDto**](RaProfileAcmeDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activate_cmp_for_ra_profile**
> RaProfileCmpDetailResponseDto activate_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, cmp_profile_uuid => $cmp_profile_uuid, activate_cmp_for_ra_profile_request_dto => $activate_cmp_for_ra_profile_request_dto)

Activate CMP for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $cmp_profile_uuid = "cmp_profile_uuid_example"; # string | CMP Profile UUID
my $activate_cmp_for_ra_profile_request_dto = WWW::OpenAPIClient::Object::ActivateCmpForRaProfileRequestDto->new(); # ActivateCmpForRaProfileRequestDto | 

eval {
    my $result = $api_instance->activate_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, cmp_profile_uuid => $cmp_profile_uuid, activate_cmp_for_ra_profile_request_dto => $activate_cmp_for_ra_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->activate_cmp_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **cmp_profile_uuid** | **string**| CMP Profile UUID | 
 **activate_cmp_for_ra_profile_request_dto** | [**ActivateCmpForRaProfileRequestDto**](ActivateCmpForRaProfileRequestDto.md)|  | 

### Return type

[**RaProfileCmpDetailResponseDto**](RaProfileCmpDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activate_scep_for_ra_profile**
> RaProfileScepDetailResponseDto activate_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, scep_profile_uuid => $scep_profile_uuid, activate_scep_for_ra_profile_request_dto => $activate_scep_for_ra_profile_request_dto)

Activate SCEP for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $scep_profile_uuid = "scep_profile_uuid_example"; # string | SCEP Profile UUID
my $activate_scep_for_ra_profile_request_dto = WWW::OpenAPIClient::Object::ActivateScepForRaProfileRequestDto->new(); # ActivateScepForRaProfileRequestDto | 

eval {
    my $result = $api_instance->activate_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, scep_profile_uuid => $scep_profile_uuid, activate_scep_for_ra_profile_request_dto => $activate_scep_for_ra_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->activate_scep_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **scep_profile_uuid** | **string**| SCEP Profile UUID | 
 **activate_scep_for_ra_profile_request_dto** | [**ActivateScepForRaProfileRequestDto**](ActivateScepForRaProfileRequestDto.md)|  | 

### Return type

[**RaProfileScepDetailResponseDto**](RaProfileScepDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **associate_ra_profile_with_approval_profile**
> associate_ra_profile_with_approval_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, approval_profile_uuid => $approval_profile_uuid)

Associated RA profile with the Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA profile UUID
my $approval_profile_uuid = "approval_profile_uuid_example"; # string | Approval profile UUID

eval {
    $api_instance->associate_ra_profile_with_approval_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, approval_profile_uuid => $approval_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->associate_ra_profile_with_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority instance UUID | 
 **ra_profile_uuid** | **string**| RA profile UUID | 
 **approval_profile_uuid** | **string**| Approval profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_delete_ra_profile**
> bulk_delete_ra_profile(request_body => $request_body)

Delete multiple RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | RA Profile UUIDs

eval {
    $api_instance->bulk_delete_ra_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->bulk_delete_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| RA Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_disable_ra_profile**
> bulk_disable_ra_profile(request_body => $request_body)

Disable multiple RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | RA Profile UUIDs

eval {
    $api_instance->bulk_disable_ra_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->bulk_disable_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| RA Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_enable_ra_profile**
> bulk_enable_ra_profile(request_body => $request_body)

Enable multiple RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | RA Profile UUIDs

eval {
    $api_instance->bulk_enable_ra_profile(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->bulk_enable_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| RA Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_ra_profile_compliance**
> check_ra_profile_compliance(request_body => $request_body)

Initiate Certificate Compliance Check

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $request_body = [WWW::OpenAPIClient::Object::ARRAY[string]->new()]; # ARRAY[string] | RA Profile UUIDs

eval {
    $api_instance->check_ra_profile_compliance(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->check_ra_profile_compliance: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| RA Profile UUIDs | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_ra_profile**
> UuidDto create_ra_profile(authority_uuid => $authority_uuid, add_ra_profile_request_dto => $add_ra_profile_request_dto)

Create RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $add_ra_profile_request_dto = WWW::OpenAPIClient::Object::AddRaProfileRequestDto->new(); # AddRaProfileRequestDto | 

eval {
    my $result = $api_instance->create_ra_profile(authority_uuid => $authority_uuid, add_ra_profile_request_dto => $add_ra_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->create_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **add_ra_profile_request_dto** | [**AddRaProfileRequestDto**](AddRaProfileRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_acme_for_ra_profile**
> deactivate_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Deactivate ACME for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->deactivate_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->deactivate_acme_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_cmp_for_ra_profile**
> deactivate_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Deactivate CMP for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->deactivate_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->deactivate_cmp_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivate_scep_for_ra_profile**
> deactivate_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Deactivate SCEP for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->deactivate_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->deactivate_scep_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_ra_profile**
> delete_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Delete RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->delete_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->delete_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_ra_profile_without_authority**
> delete_ra_profile_without_authority(ra_profile_uuid => $ra_profile_uuid)

Delete RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->delete_ra_profile_without_authority(ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->delete_ra_profile_without_authority: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disable_ra_profile**
> disable_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Disable RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->disable_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->disable_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disassociate_ra_profile_from_approval_profile**
> disassociate_ra_profile_from_approval_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, approval_profile_uuid => $approval_profile_uuid)

Disassociated RA profile with the Approval profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA profile UUID
my $approval_profile_uuid = "approval_profile_uuid_example"; # string | Approval profile UUID

eval {
    $api_instance->disassociate_ra_profile_from_approval_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, approval_profile_uuid => $approval_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->disassociate_ra_profile_from_approval_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority instance UUID | 
 **ra_profile_uuid** | **string**| RA profile UUID | 
 **approval_profile_uuid** | **string**| Approval profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **edit_ra_profile**
> RaProfileDto edit_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, edit_ra_profile_request_dto => $edit_ra_profile_request_dto)

Edit RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID
my $edit_ra_profile_request_dto = WWW::OpenAPIClient::Object::EditRaProfileRequestDto->new(); # EditRaProfileRequestDto | 

eval {
    my $result = $api_instance->edit_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid, edit_ra_profile_request_dto => $edit_ra_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->edit_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 
 **edit_ra_profile_request_dto** | [**EditRaProfileRequestDto**](EditRaProfileRequestDto.md)|  | 

### Return type

[**RaProfileDto**](RaProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enable_ra_profile**
> enable_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Enable RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    $api_instance->enable_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->enable_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_acme_for_ra_profile**
> RaProfileAcmeDetailResponseDto get_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get ACME details for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_acme_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_acme_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**RaProfileAcmeDetailResponseDto**](RaProfileAcmeDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_associated_approval_profiles**
> ARRAY[ApprovalProfileDto] get_associated_approval_profiles(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

List of Approval profiles associated with the RAProfile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA profile UUID

eval {
    my $result = $api_instance->get_associated_approval_profiles(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_associated_approval_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority instance UUID | 
 **ra_profile_uuid** | **string**| RA profile UUID | 

### Return type

[**ARRAY[ApprovalProfileDto]**](ApprovalProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_associated_compliance_profiles**
> ARRAY[SimplifiedComplianceProfileDto] get_associated_compliance_profiles(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get Compliance Profiles for an RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_associated_compliance_profiles(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_associated_compliance_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**ARRAY[SimplifiedComplianceProfileDto]**](SimplifiedComplianceProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authority_certificate_chain**
> ARRAY[CertificateDetailDto] get_authority_certificate_chain(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Retrieve certificates of authority belonging to RA profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA profile UUID

eval {
    my $result = $api_instance->get_authority_certificate_chain(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_authority_certificate_chain: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority instance UUID | 
 **ra_profile_uuid** | **string**| RA profile UUID | 

### Return type

[**ARRAY[CertificateDetailDto]**](CertificateDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cmp_for_ra_profile**
> RaProfileCmpDetailResponseDto get_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get CMP details for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_cmp_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_cmp_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**RaProfileCmpDetailResponseDto**](RaProfileCmpDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ra_profile**
> RaProfileDto get_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Details of RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**RaProfileDto**](RaProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ra_profile_without_authority**
> RaProfileDto get_ra_profile_without_authority(ra_profile_uuid => $ra_profile_uuid)

Details of RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_ra_profile_without_authority(ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_ra_profile_without_authority: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**RaProfileDto**](RaProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scep_for_ra_profile**
> RaProfileScepDetailResponseDto get_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get SCEP details for RA Profile

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->get_scep_for_ra_profile(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->get_scep_for_ra_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**RaProfileScepDetailResponseDto**](RaProfileScepDetailResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_ra_profile_issue_certificate_attributes**
> ARRAY[BaseAttributeDto] list_ra_profile_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get issue Certificate Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->list_ra_profile_issue_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->list_ra_profile_issue_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_ra_profile_revoke_certificate_attributes**
> ARRAY[BaseAttributeDto] list_ra_profile_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid)

Get revocation Attributes

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $authority_uuid = "authority_uuid_example"; # string | Authority Instance UUID
my $ra_profile_uuid = "ra_profile_uuid_example"; # string | RA Profile UUID

eval {
    my $result = $api_instance->list_ra_profile_revoke_certificate_attributes(authority_uuid => $authority_uuid, ra_profile_uuid => $ra_profile_uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->list_ra_profile_revoke_certificate_attributes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority_uuid** | **string**| Authority Instance UUID | 
 **ra_profile_uuid** | **string**| RA Profile UUID | 

### Return type

[**ARRAY[BaseAttributeDto]**](BaseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_ra_profiles**
> ARRAY[RaProfileDto] list_ra_profiles(enabled => $enabled)

List of available RA Profiles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::RAProfileManagementApi;
my $api_instance = WWW::OpenAPIClient::RAProfileManagementApi->new(
);

my $enabled = null; # boolean | 

eval {
    my $result = $api_instance->list_ra_profiles(enabled => $enabled);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling RAProfileManagementApi->list_ra_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enabled** | **boolean**|  | [optional] 

### Return type

[**ARRAY[RaProfileDto]**](RaProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

