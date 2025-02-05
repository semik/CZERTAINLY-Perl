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

use_ok('CZERTAINLY::RAProfileManagementApi');

my $api = CZERTAINLY::RAProfileManagementApi->new();
isa_ok($api, 'CZERTAINLY::RAProfileManagementApi');

#
# activate_acme_for_ra_profile test
#
# uncomment below and update the test
#my $activate_acme_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $activate_acme_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $activate_acme_for_ra_profile_acme_profile_uuid = undef; # replace NULL with a proper value
#my $activate_acme_for_ra_profile_activate_acme_for_ra_profile_request_dto = undef; # replace NULL with a proper value
#my $activate_acme_for_ra_profile_result = $api->activate_acme_for_ra_profile(authority_uuid => $activate_acme_for_ra_profile_authority_uuid, ra_profile_uuid => $activate_acme_for_ra_profile_ra_profile_uuid, acme_profile_uuid => $activate_acme_for_ra_profile_acme_profile_uuid, activate_acme_for_ra_profile_request_dto => $activate_acme_for_ra_profile_activate_acme_for_ra_profile_request_dto);

#
# activate_cmp_for_ra_profile test
#
# uncomment below and update the test
#my $activate_cmp_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $activate_cmp_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $activate_cmp_for_ra_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $activate_cmp_for_ra_profile_activate_cmp_for_ra_profile_request_dto = undef; # replace NULL with a proper value
#my $activate_cmp_for_ra_profile_result = $api->activate_cmp_for_ra_profile(authority_uuid => $activate_cmp_for_ra_profile_authority_uuid, ra_profile_uuid => $activate_cmp_for_ra_profile_ra_profile_uuid, cmp_profile_uuid => $activate_cmp_for_ra_profile_cmp_profile_uuid, activate_cmp_for_ra_profile_request_dto => $activate_cmp_for_ra_profile_activate_cmp_for_ra_profile_request_dto);

#
# activate_scep_for_ra_profile test
#
# uncomment below and update the test
#my $activate_scep_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $activate_scep_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $activate_scep_for_ra_profile_scep_profile_uuid = undef; # replace NULL with a proper value
#my $activate_scep_for_ra_profile_activate_scep_for_ra_profile_request_dto = undef; # replace NULL with a proper value
#my $activate_scep_for_ra_profile_result = $api->activate_scep_for_ra_profile(authority_uuid => $activate_scep_for_ra_profile_authority_uuid, ra_profile_uuid => $activate_scep_for_ra_profile_ra_profile_uuid, scep_profile_uuid => $activate_scep_for_ra_profile_scep_profile_uuid, activate_scep_for_ra_profile_request_dto => $activate_scep_for_ra_profile_activate_scep_for_ra_profile_request_dto);

#
# associate_ra_profile_with_approval_profile test
#
# uncomment below and update the test
#my $associate_ra_profile_with_approval_profile_authority_uuid = undef; # replace NULL with a proper value
#my $associate_ra_profile_with_approval_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $associate_ra_profile_with_approval_profile_approval_profile_uuid = undef; # replace NULL with a proper value
#my $associate_ra_profile_with_approval_profile_result = $api->associate_ra_profile_with_approval_profile(authority_uuid => $associate_ra_profile_with_approval_profile_authority_uuid, ra_profile_uuid => $associate_ra_profile_with_approval_profile_ra_profile_uuid, approval_profile_uuid => $associate_ra_profile_with_approval_profile_approval_profile_uuid);

#
# bulk_delete_ra_profile test
#
# uncomment below and update the test
#my $bulk_delete_ra_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_delete_ra_profile_result = $api->bulk_delete_ra_profile(request_body => $bulk_delete_ra_profile_request_body);

#
# bulk_disable_ra_profile test
#
# uncomment below and update the test
#my $bulk_disable_ra_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_disable_ra_profile_result = $api->bulk_disable_ra_profile(request_body => $bulk_disable_ra_profile_request_body);

#
# bulk_enable_ra_profile test
#
# uncomment below and update the test
#my $bulk_enable_ra_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_enable_ra_profile_result = $api->bulk_enable_ra_profile(request_body => $bulk_enable_ra_profile_request_body);

#
# check_ra_profile_compliance test
#
# uncomment below and update the test
#my $check_ra_profile_compliance_request_body = undef; # replace NULL with a proper value
#my $check_ra_profile_compliance_result = $api->check_ra_profile_compliance(request_body => $check_ra_profile_compliance_request_body);

#
# create_ra_profile test
#
# uncomment below and update the test
#my $create_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $create_ra_profile_add_ra_profile_request_dto = undef; # replace NULL with a proper value
#my $create_ra_profile_result = $api->create_ra_profile(authority_uuid => $create_ra_profile_authority_uuid, add_ra_profile_request_dto => $create_ra_profile_add_ra_profile_request_dto);

#
# deactivate_acme_for_ra_profile test
#
# uncomment below and update the test
#my $deactivate_acme_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $deactivate_acme_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $deactivate_acme_for_ra_profile_result = $api->deactivate_acme_for_ra_profile(authority_uuid => $deactivate_acme_for_ra_profile_authority_uuid, ra_profile_uuid => $deactivate_acme_for_ra_profile_ra_profile_uuid);

#
# deactivate_cmp_for_ra_profile test
#
# uncomment below and update the test
#my $deactivate_cmp_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $deactivate_cmp_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $deactivate_cmp_for_ra_profile_result = $api->deactivate_cmp_for_ra_profile(authority_uuid => $deactivate_cmp_for_ra_profile_authority_uuid, ra_profile_uuid => $deactivate_cmp_for_ra_profile_ra_profile_uuid);

#
# deactivate_scep_for_ra_profile test
#
# uncomment below and update the test
#my $deactivate_scep_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $deactivate_scep_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $deactivate_scep_for_ra_profile_result = $api->deactivate_scep_for_ra_profile(authority_uuid => $deactivate_scep_for_ra_profile_authority_uuid, ra_profile_uuid => $deactivate_scep_for_ra_profile_ra_profile_uuid);

#
# delete_ra_profile test
#
# uncomment below and update the test
#my $delete_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $delete_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $delete_ra_profile_result = $api->delete_ra_profile(authority_uuid => $delete_ra_profile_authority_uuid, ra_profile_uuid => $delete_ra_profile_ra_profile_uuid);

#
# delete_ra_profile_without_authority test
#
# uncomment below and update the test
#my $delete_ra_profile_without_authority_ra_profile_uuid = undef; # replace NULL with a proper value
#my $delete_ra_profile_without_authority_result = $api->delete_ra_profile_without_authority(ra_profile_uuid => $delete_ra_profile_without_authority_ra_profile_uuid);

#
# disable_ra_profile test
#
# uncomment below and update the test
#my $disable_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $disable_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $disable_ra_profile_result = $api->disable_ra_profile(authority_uuid => $disable_ra_profile_authority_uuid, ra_profile_uuid => $disable_ra_profile_ra_profile_uuid);

#
# disassociate_ra_profile_from_approval_profile test
#
# uncomment below and update the test
#my $disassociate_ra_profile_from_approval_profile_authority_uuid = undef; # replace NULL with a proper value
#my $disassociate_ra_profile_from_approval_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $disassociate_ra_profile_from_approval_profile_approval_profile_uuid = undef; # replace NULL with a proper value
#my $disassociate_ra_profile_from_approval_profile_result = $api->disassociate_ra_profile_from_approval_profile(authority_uuid => $disassociate_ra_profile_from_approval_profile_authority_uuid, ra_profile_uuid => $disassociate_ra_profile_from_approval_profile_ra_profile_uuid, approval_profile_uuid => $disassociate_ra_profile_from_approval_profile_approval_profile_uuid);

#
# edit_ra_profile test
#
# uncomment below and update the test
#my $edit_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $edit_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $edit_ra_profile_edit_ra_profile_request_dto = undef; # replace NULL with a proper value
#my $edit_ra_profile_result = $api->edit_ra_profile(authority_uuid => $edit_ra_profile_authority_uuid, ra_profile_uuid => $edit_ra_profile_ra_profile_uuid, edit_ra_profile_request_dto => $edit_ra_profile_edit_ra_profile_request_dto);

#
# enable_ra_profile test
#
# uncomment below and update the test
#my $enable_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $enable_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $enable_ra_profile_result = $api->enable_ra_profile(authority_uuid => $enable_ra_profile_authority_uuid, ra_profile_uuid => $enable_ra_profile_ra_profile_uuid);

#
# get_acme_for_ra_profile test
#
# uncomment below and update the test
#my $get_acme_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $get_acme_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_acme_for_ra_profile_result = $api->get_acme_for_ra_profile(authority_uuid => $get_acme_for_ra_profile_authority_uuid, ra_profile_uuid => $get_acme_for_ra_profile_ra_profile_uuid);

#
# get_associated_approval_profiles test
#
# uncomment below and update the test
#my $get_associated_approval_profiles_authority_uuid = undef; # replace NULL with a proper value
#my $get_associated_approval_profiles_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_associated_approval_profiles_result = $api->get_associated_approval_profiles(authority_uuid => $get_associated_approval_profiles_authority_uuid, ra_profile_uuid => $get_associated_approval_profiles_ra_profile_uuid);

#
# get_associated_compliance_profiles test
#
# uncomment below and update the test
#my $get_associated_compliance_profiles_authority_uuid = undef; # replace NULL with a proper value
#my $get_associated_compliance_profiles_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_associated_compliance_profiles_result = $api->get_associated_compliance_profiles(authority_uuid => $get_associated_compliance_profiles_authority_uuid, ra_profile_uuid => $get_associated_compliance_profiles_ra_profile_uuid);

#
# get_authority_certificate_chain test
#
# uncomment below and update the test
#my $get_authority_certificate_chain_authority_uuid = undef; # replace NULL with a proper value
#my $get_authority_certificate_chain_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_authority_certificate_chain_result = $api->get_authority_certificate_chain(authority_uuid => $get_authority_certificate_chain_authority_uuid, ra_profile_uuid => $get_authority_certificate_chain_ra_profile_uuid);

#
# get_cmp_for_ra_profile test
#
# uncomment below and update the test
#my $get_cmp_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $get_cmp_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_cmp_for_ra_profile_result = $api->get_cmp_for_ra_profile(authority_uuid => $get_cmp_for_ra_profile_authority_uuid, ra_profile_uuid => $get_cmp_for_ra_profile_ra_profile_uuid);

#
# get_ra_profile test
#
# uncomment below and update the test
#my $get_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $get_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_ra_profile_result = $api->get_ra_profile(authority_uuid => $get_ra_profile_authority_uuid, ra_profile_uuid => $get_ra_profile_ra_profile_uuid);

#
# get_ra_profile_without_authority test
#
# uncomment below and update the test
#my $get_ra_profile_without_authority_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_ra_profile_without_authority_result = $api->get_ra_profile_without_authority(ra_profile_uuid => $get_ra_profile_without_authority_ra_profile_uuid);

#
# get_scep_for_ra_profile test
#
# uncomment below and update the test
#my $get_scep_for_ra_profile_authority_uuid = undef; # replace NULL with a proper value
#my $get_scep_for_ra_profile_ra_profile_uuid = undef; # replace NULL with a proper value
#my $get_scep_for_ra_profile_result = $api->get_scep_for_ra_profile(authority_uuid => $get_scep_for_ra_profile_authority_uuid, ra_profile_uuid => $get_scep_for_ra_profile_ra_profile_uuid);

#
# list_ra_profile_issue_certificate_attributes test
#
# uncomment below and update the test
#my $list_ra_profile_issue_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $list_ra_profile_issue_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $list_ra_profile_issue_certificate_attributes_result = $api->list_ra_profile_issue_certificate_attributes(authority_uuid => $list_ra_profile_issue_certificate_attributes_authority_uuid, ra_profile_uuid => $list_ra_profile_issue_certificate_attributes_ra_profile_uuid);

#
# list_ra_profile_revoke_certificate_attributes test
#
# uncomment below and update the test
#my $list_ra_profile_revoke_certificate_attributes_authority_uuid = undef; # replace NULL with a proper value
#my $list_ra_profile_revoke_certificate_attributes_ra_profile_uuid = undef; # replace NULL with a proper value
#my $list_ra_profile_revoke_certificate_attributes_result = $api->list_ra_profile_revoke_certificate_attributes(authority_uuid => $list_ra_profile_revoke_certificate_attributes_authority_uuid, ra_profile_uuid => $list_ra_profile_revoke_certificate_attributes_ra_profile_uuid);

#
# list_ra_profiles test
#
# uncomment below and update the test
#my $list_ra_profiles_enabled = undef; # replace NULL with a proper value
#my $list_ra_profiles_result = $api->list_ra_profiles(enabled => $list_ra_profiles_enabled);


done_testing();
