=begin comment

CZERTAINLY Core API

REST API for CZERTAINLY Core

The version of the OpenAPI document: 2.13.2-SNAPSHOT
Contact: info@czertainly.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::ClientOperationsV2Api');

my $api = WWW::OpenAPIClient::ClientOperationsV2Api->new();
isa_ok($api, 'WWW::OpenAPIClient::ClientOperationsV2Api');

#
# issue_certificate test
#
# uncomment below and update the test
#my $issue_certificate_authority_uuid = undef; # replace NULL with a proper value
#my $issue_certificate_ra_profile_uuid = undef; # replace NULL with a proper value
#my $issue_certificate_client_certificate_sign_request_dto = undef; # replace NULL with a proper value
#my $issue_certificate_result = $api->issue_certificate(authority_uuid => $issue_certificate_authority_uuid, ra_profile_uuid => $issue_certificate_ra_profile_uuid, client_certificate_sign_request_dto => $issue_certificate_client_certificate_sign_request_dto);

#
# issue_requested_certificate test
#
# uncomment below and update the test
#my $issue_requested_certificate_authority_uuid = undef; # replace NULL with a proper value
#my $issue_requested_certificate_ra_profile_uuid = undef; # replace NULL with a proper value
#my $issue_requested_certificate_certificate_uuid = undef; # replace NULL with a proper value
#my $issue_requested_certificate_result = $api->issue_requested_certificate(authority_uuid => $issue_requested_certificate_authority_uuid, ra_profile_uuid => $issue_requested_certificate_ra_profile_uuid, certificate_uuid => $issue_requested_certificate_certificate_uuid);

#
# list_issue_certificate_attributes test
#
# uncomment below and update the test
#my $list_issue_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $list_issue_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $list_issue_certificate_attributes_result = $api->list_issue_certificate_attributes(authority_uuid => $list_issue_certificate_attributes_authority_uuid, ra_profile_uuid => $list_issue_certificate_attributes_ra_profile_uuid);

#
# list_revoke_certificate_attributes test
#
# uncomment below and update the test
#my $list_revoke_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $list_revoke_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $list_revoke_certificate_attributes_result = $api->list_revoke_certificate_attributes(authority_uuid => $list_revoke_certificate_attributes_authority_uuid, ra_profile_uuid => $list_revoke_certificate_attributes_ra_profile_uuid);

#
# rekey_certificate test
#
# uncomment below and update the test
#my $rekey_certificate_authority_uuid = undef; # replace NULL with a proper value
#my $rekey_certificate_ra_profile_uuid = undef; # replace NULL with a proper value
#my $rekey_certificate_certificate_uuid = undef; # replace NULL with a proper value
#my $rekey_certificate_client_certificate_rekey_request_dto = undef; # replace NULL with a proper value
#my $rekey_certificate_result = $api->rekey_certificate(authority_uuid => $rekey_certificate_authority_uuid, ra_profile_uuid => $rekey_certificate_ra_profile_uuid, certificate_uuid => $rekey_certificate_certificate_uuid, client_certificate_rekey_request_dto => $rekey_certificate_client_certificate_rekey_request_dto);

#
# renew_certificate test
#
# uncomment below and update the test
#my $renew_certificate_authority_uuid = undef; # replace NULL with a proper value
#my $renew_certificate_ra_profile_uuid = undef; # replace NULL with a proper value
#my $renew_certificate_certificate_uuid = undef; # replace NULL with a proper value
#my $renew_certificate_client_certificate_renew_request_dto = undef; # replace NULL with a proper value
#my $renew_certificate_result = $api->renew_certificate(authority_uuid => $renew_certificate_authority_uuid, ra_profile_uuid => $renew_certificate_ra_profile_uuid, certificate_uuid => $renew_certificate_certificate_uuid, client_certificate_renew_request_dto => $renew_certificate_client_certificate_renew_request_dto);

#
# revoke_certificate test
#
# uncomment below and update the test
#my $revoke_certificate_authority_uuid = undef; # replace NULL with a proper value
#my $revoke_certificate_ra_profile_uuid = undef; # replace NULL with a proper value
#my $revoke_certificate_certificate_uuid = undef; # replace NULL with a proper value
#my $revoke_certificate_client_certificate_revocation_dto = undef; # replace NULL with a proper value
#my $revoke_certificate_result = $api->revoke_certificate(authority_uuid => $revoke_certificate_authority_uuid, ra_profile_uuid => $revoke_certificate_ra_profile_uuid, certificate_uuid => $revoke_certificate_certificate_uuid, client_certificate_revocation_dto => $revoke_certificate_client_certificate_revocation_dto);

#
# validate_issue_certificate_attributes test
#
# uncomment below and update the test
#my $validate_issue_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $validate_issue_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $validate_issue_certificate_attributes_request_attribute_dto = undef; # replace NULL with a proper value
#my $validate_issue_certificate_attributes_result = $api->validate_issue_certificate_attributes(authority_uuid => $validate_issue_certificate_attributes_authority_uuid, ra_profile_uuid => $validate_issue_certificate_attributes_ra_profile_uuid, request_attribute_dto => $validate_issue_certificate_attributes_request_attribute_dto);

#
# validate_revoke_certificate_attributes test
#
# uncomment below and update the test
#my $validate_revoke_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $validate_revoke_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $validate_revoke_certificate_attributes_request_attribute_dto = undef; # replace NULL with a proper value
#my $validate_revoke_certificate_attributes_result = $api->validate_revoke_certificate_attributes(authority_uuid => $validate_revoke_certificate_attributes_authority_uuid, ra_profile_uuid => $validate_revoke_certificate_attributes_ra_profile_uuid, request_attribute_dto => $validate_revoke_certificate_attributes_request_attribute_dto);


done_testing();
