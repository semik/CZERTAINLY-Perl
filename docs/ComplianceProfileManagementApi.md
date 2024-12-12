# CZERTAINLY::ComplianceProfileManagementApi

## Load the API package
```perl
use CZERTAINLY::Object::ComplianceProfileManagementApi;
```

All URIs are relative to *http://localhost:45309*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_group**](ComplianceProfileManagementApi.md#add_group) | **POST** /v1/complianceProfiles/{uuid}/groups | Add group to a Compliance Profile
[**add_rule**](ComplianceProfileManagementApi.md#add_rule) | **POST** /v1/complianceProfiles/{uuid}/rules | Add rule to a Compliance Profile
[**associate_profiles**](ComplianceProfileManagementApi.md#associate_profiles) | **PATCH** /v1/complianceProfiles/{uuid}/raProfiles/associate | Associate Compliance Profile to RA Profile
[**bulk_delete_compliance_profiles**](ComplianceProfileManagementApi.md#bulk_delete_compliance_profiles) | **DELETE** /v1/complianceProfiles | Delete multiple Compliance Profiles
[**check_compliance**](ComplianceProfileManagementApi.md#check_compliance) | **POST** /v1/complianceProfiles/compliance | Initiate Certificate Compliance Check
[**create_compliance_profile**](ComplianceProfileManagementApi.md#create_compliance_profile) | **POST** /v1/complianceProfiles | Add Compliance Profile
[**delete_compliance_profile**](ComplianceProfileManagementApi.md#delete_compliance_profile) | **DELETE** /v1/complianceProfiles/{uuid} | Delete Compliance Profile
[**disassociate_profiles**](ComplianceProfileManagementApi.md#disassociate_profiles) | **PATCH** /v1/complianceProfiles/{uuid}/raProfiles/disassociate | Disassociate Compliance Profile to RA Profile
[**force_delete_compliance_profiles**](ComplianceProfileManagementApi.md#force_delete_compliance_profiles) | **DELETE** /v1/complianceProfiles/force | Force delete Compliance Profiles
[**get_associated_ra_profiles**](ComplianceProfileManagementApi.md#get_associated_ra_profiles) | **GET** /v1/complianceProfiles/{uuid}/raProfiles | Get RA Profiles for a Compliance Profile
[**get_compliance_groups**](ComplianceProfileManagementApi.md#get_compliance_groups) | **GET** /v1/complianceProfiles/groups | Get Compliance groups
[**get_compliance_profile**](ComplianceProfileManagementApi.md#get_compliance_profile) | **GET** /v1/complianceProfiles/{uuid} | Details of a Compliance Profiles
[**get_compliance_rules**](ComplianceProfileManagementApi.md#get_compliance_rules) | **GET** /v1/complianceProfiles/rules | Get Compliance rules
[**list_compliance_profiles**](ComplianceProfileManagementApi.md#list_compliance_profiles) | **GET** /v1/complianceProfiles | List of available Compliance Profiles
[**remove_group**](ComplianceProfileManagementApi.md#remove_group) | **DELETE** /v1/complianceProfiles/{uuid}/groups | Delete group from a Compliance Profile
[**remove_rule**](ComplianceProfileManagementApi.md#remove_rule) | **DELETE** /v1/complianceProfiles/{uuid}/rules | Delete rule from a Compliance Profile


# **add_group**
> add_group(uuid => $uuid, compliance_group_request_dto => $compliance_group_request_dto)

Add group to a Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $compliance_group_request_dto = CZERTAINLY::Object::ComplianceGroupRequestDto->new(); # ComplianceGroupRequestDto | 

eval {
    $api_instance->add_group(uuid => $uuid, compliance_group_request_dto => $compliance_group_request_dto);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->add_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **compliance_group_request_dto** | [**ComplianceGroupRequestDto**](ComplianceGroupRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_rule**
> ComplianceProfileRuleDto add_rule(uuid => $uuid, compliance_rule_addition_request_dto => $compliance_rule_addition_request_dto)

Add rule to a Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $compliance_rule_addition_request_dto = CZERTAINLY::Object::ComplianceRuleAdditionRequestDto->new(); # ComplianceRuleAdditionRequestDto | 

eval {
    my $result = $api_instance->add_rule(uuid => $uuid, compliance_rule_addition_request_dto => $compliance_rule_addition_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->add_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **compliance_rule_addition_request_dto** | [**ComplianceRuleAdditionRequestDto**](ComplianceRuleAdditionRequestDto.md)|  | 

### Return type

[**ComplianceProfileRuleDto**](ComplianceProfileRuleDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **associate_profiles**
> associate_profiles(uuid => $uuid, ra_profile_association_request_dto => $ra_profile_association_request_dto)

Associate Compliance Profile to RA Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $ra_profile_association_request_dto = CZERTAINLY::Object::RaProfileAssociationRequestDto->new(); # RaProfileAssociationRequestDto | 

eval {
    $api_instance->associate_profiles(uuid => $uuid, ra_profile_association_request_dto => $ra_profile_association_request_dto);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->associate_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **ra_profile_association_request_dto** | [**RaProfileAssociationRequestDto**](RaProfileAssociationRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulk_delete_compliance_profiles**
> ARRAY[BulkActionMessageDto] bulk_delete_compliance_profiles(request_body => $request_body)

Delete multiple Compliance Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | Compliance Profile UUIDs

eval {
    my $result = $api_instance->bulk_delete_compliance_profiles(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->bulk_delete_compliance_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)| Compliance Profile UUIDs | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_compliance**
> check_compliance(request_body => $request_body)

Initiate Certificate Compliance Check

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | RA Profile UUIDs

eval {
    $api_instance->check_compliance(request_body => $request_body);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->check_compliance: $@\n";
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

# **create_compliance_profile**
> UuidDto create_compliance_profile(compliance_profile_request_dto => $compliance_profile_request_dto)

Add Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $compliance_profile_request_dto = CZERTAINLY::Object::ComplianceProfileRequestDto->new(); # ComplianceProfileRequestDto | 

eval {
    my $result = $api_instance->create_compliance_profile(compliance_profile_request_dto => $compliance_profile_request_dto);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->create_compliance_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compliance_profile_request_dto** | [**ComplianceProfileRequestDto**](ComplianceProfileRequestDto.md)|  | 

### Return type

[**UuidDto**](UuidDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_compliance_profile**
> delete_compliance_profile(uuid => $uuid)

Delete Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID

eval {
    $api_instance->delete_compliance_profile(uuid => $uuid);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->delete_compliance_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disassociate_profiles**
> disassociate_profiles(uuid => $uuid, ra_profile_association_request_dto => $ra_profile_association_request_dto)

Disassociate Compliance Profile to RA Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $ra_profile_association_request_dto = CZERTAINLY::Object::RaProfileAssociationRequestDto->new(); # RaProfileAssociationRequestDto | 

eval {
    $api_instance->disassociate_profiles(uuid => $uuid, ra_profile_association_request_dto => $ra_profile_association_request_dto);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->disassociate_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **ra_profile_association_request_dto** | [**RaProfileAssociationRequestDto**](RaProfileAssociationRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **force_delete_compliance_profiles**
> ARRAY[BulkActionMessageDto] force_delete_compliance_profiles(request_body => $request_body)

Force delete Compliance Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $request_body = [CZERTAINLY::Object::ARRAY[string]->new()]; # ARRAY[string] | 

eval {
    my $result = $api_instance->force_delete_compliance_profiles(request_body => $request_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->force_delete_compliance_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**ARRAY[string]**](string.md)|  | 

### Return type

[**ARRAY[BulkActionMessageDto]**](BulkActionMessageDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_associated_ra_profiles**
> ARRAY[SimplifiedRaProfileDto] get_associated_ra_profiles(uuid => $uuid)

Get RA Profiles for a Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID

eval {
    my $result = $api_instance->get_associated_ra_profiles(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->get_associated_ra_profiles: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 

### Return type

[**ARRAY[SimplifiedRaProfileDto]**](SimplifiedRaProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compliance_groups**
> ARRAY[ComplianceGroupsListResponseDto] get_compliance_groups(compliance_provider => $compliance_provider, kind => $kind)

Get Compliance groups

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $compliance_provider = "compliance_provider_example"; # string | 
my $kind = "kind_example"; # string | 

eval {
    my $result = $api_instance->get_compliance_groups(compliance_provider => $compliance_provider, kind => $kind);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->get_compliance_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compliance_provider** | **string**|  | [optional] 
 **kind** | **string**|  | [optional] 

### Return type

[**ARRAY[ComplianceGroupsListResponseDto]**](ComplianceGroupsListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compliance_profile**
> ComplianceProfileDto get_compliance_profile(uuid => $uuid)

Details of a Compliance Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID

eval {
    my $result = $api_instance->get_compliance_profile(uuid => $uuid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->get_compliance_profile: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 

### Return type

[**ComplianceProfileDto**](ComplianceProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_compliance_rules**
> ARRAY[ComplianceRulesListResponseDto] get_compliance_rules(compliance_provider => $compliance_provider, kind => $kind, certificate_type => $certificate_type)

Get Compliance rules

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $compliance_provider = "compliance_provider_example"; # string | 
my $kind = "kind_example"; # string | 
my $certificate_type = [(new CZERTAINLY.CertificateType())]; # ARRAY[CertificateType] | 

eval {
    my $result = $api_instance->get_compliance_rules(compliance_provider => $compliance_provider, kind => $kind, certificate_type => $certificate_type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->get_compliance_rules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compliance_provider** | **string**|  | [optional] 
 **kind** | **string**|  | [optional] 
 **certificate_type** | [**ARRAY[CertificateType]**](CertificateType.md)|  | [optional] 

### Return type

[**ARRAY[ComplianceRulesListResponseDto]**](ComplianceRulesListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_compliance_profiles**
> ARRAY[ComplianceProfilesListDto] list_compliance_profiles()

List of available Compliance Profiles

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);


eval {
    my $result = $api_instance->list_compliance_profiles();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->list_compliance_profiles: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[ComplianceProfilesListDto]**](ComplianceProfilesListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_group**
> remove_group(uuid => $uuid, compliance_group_request_dto => $compliance_group_request_dto)

Delete group from a Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $compliance_group_request_dto = CZERTAINLY::Object::ComplianceGroupRequestDto->new(); # ComplianceGroupRequestDto | 

eval {
    $api_instance->remove_group(uuid => $uuid, compliance_group_request_dto => $compliance_group_request_dto);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->remove_group: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **compliance_group_request_dto** | [**ComplianceGroupRequestDto**](ComplianceGroupRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_rule**
> remove_rule(uuid => $uuid, compliance_rule_deletion_request_dto => $compliance_rule_deletion_request_dto)

Delete rule from a Compliance Profile

### Example
```perl
use Data::Dumper;
use CZERTAINLY::ComplianceProfileManagementApi;
my $api_instance = CZERTAINLY::ComplianceProfileManagementApi->new(
);

my $uuid = "uuid_example"; # string | Compliance Profile UUID
my $compliance_rule_deletion_request_dto = CZERTAINLY::Object::ComplianceRuleDeletionRequestDto->new(); # ComplianceRuleDeletionRequestDto | 

eval {
    $api_instance->remove_rule(uuid => $uuid, compliance_rule_deletion_request_dto => $compliance_rule_deletion_request_dto);
};
if ($@) {
    warn "Exception when calling ComplianceProfileManagementApi->remove_rule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **string**| Compliance Profile UUID | 
 **compliance_rule_deletion_request_dto** | [**ComplianceRuleDeletionRequestDto**](ComplianceRuleDeletionRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

