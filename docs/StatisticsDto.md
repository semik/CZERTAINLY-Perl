# WWW::OpenAPIClient::Object::StatisticsDto

## Load the model package
```perl
use WWW::OpenAPIClient::Object::StatisticsDto;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_certificates** | **int** | Number Certificates available | [optional] 
**total_groups** | **int** | Number of Groups | [optional] 
**total_discoveries** | **int** | Number of Discoveries triggered | [optional] 
**total_connectors** | **int** | Number of Connectors added | [optional] 
**total_ra_profiles** | **int** | Number of RA Profiles in the platform | [optional] 
**total_credentials** | **int** | Number of Credentials | [optional] 
**total_authorities** | **int** | Number of Authority instances | [optional] 
**total_administrators** | **int** | Number of Administrators | [optional] 
**total_clients** | **int** | Number of Clients added | [optional] 
**group_stat_by_certificate_count** | **HASH[string,int]** | Map of Certificate count by Group | [optional] 
**ra_profile_stat_by_certificate_count** | **HASH[string,int]** | Map of Certificate count by RA Profile | [optional] 
**certificate_stat_by_type** | **HASH[string,int]** | Map of Certificate count by Type | [optional] 
**certificate_stat_by_expiry** | **HASH[string,int]** | Map of Certificate count by expiry date | [optional] 
**certificate_stat_by_key_size** | **HASH[string,int]** | Map of Certificate count by key size | [optional] 
**certificate_stat_by_subject_type** | **HASH[string,int]** | Map of Certificate count by subject type | [optional] 
**certificate_stat_by_state** | **HASH[string,int]** | Map of Certificate count by state | [optional] 
**certificate_stat_by_validation_status** | **HASH[string,int]** | Map of Certificate count by validationStatus | [optional] 
**certificate_stat_by_compliance_status** | **HASH[string,int]** | Map of Certificate count by compliance status | [optional] 
**connector_stat_by_status** | **HASH[string,int]** | Map of Connector count by status | [optional] 
**ra_profile_stat_by_status** | **HASH[string,int]** | Map of RA Profile count by status | [optional] 
**administrator_stat_by_status** | **HASH[string,int]** | Map of Administrator count by status | [optional] 
**client_stat_by_status** | **HASH[string,int]** | Map of Client count by status | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


