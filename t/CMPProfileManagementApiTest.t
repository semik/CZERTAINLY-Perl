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

use_ok('CZERTAINLY::CMPProfileManagementApi');

my $api = CZERTAINLY::CMPProfileManagementApi->new();
isa_ok($api, 'CZERTAINLY::CMPProfileManagementApi');

#
# bulk_delete_cmp_profile test
#
# uncomment below and update the test
#my $bulk_delete_cmp_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_delete_cmp_profile_result = $api->bulk_delete_cmp_profile(request_body => $bulk_delete_cmp_profile_request_body);

#
# bulk_disable_cmp_profile test
#
# uncomment below and update the test
#my $bulk_disable_cmp_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_disable_cmp_profile_result = $api->bulk_disable_cmp_profile(request_body => $bulk_disable_cmp_profile_request_body);

#
# bulk_enable_cmp_profile test
#
# uncomment below and update the test
#my $bulk_enable_cmp_profile_request_body = undef; # replace NULL with a proper value
#my $bulk_enable_cmp_profile_result = $api->bulk_enable_cmp_profile(request_body => $bulk_enable_cmp_profile_request_body);

#
# create_cmp_profile test
#
# uncomment below and update the test
#my $create_cmp_profile_cmp_profile_request_dto = undef; # replace NULL with a proper value
#my $create_cmp_profile_result = $api->create_cmp_profile(cmp_profile_request_dto => $create_cmp_profile_cmp_profile_request_dto);

#
# delete_cmp_profile test
#
# uncomment below and update the test
#my $delete_cmp_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $delete_cmp_profile_result = $api->delete_cmp_profile(cmp_profile_uuid => $delete_cmp_profile_cmp_profile_uuid);

#
# disable_cmp_profile test
#
# uncomment below and update the test
#my $disable_cmp_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $disable_cmp_profile_result = $api->disable_cmp_profile(cmp_profile_uuid => $disable_cmp_profile_cmp_profile_uuid);

#
# edit_cmp_profile test
#
# uncomment below and update the test
#my $edit_cmp_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $edit_cmp_profile_cmp_profile_edit_request_dto = undef; # replace NULL with a proper value
#my $edit_cmp_profile_result = $api->edit_cmp_profile(cmp_profile_uuid => $edit_cmp_profile_cmp_profile_uuid, cmp_profile_edit_request_dto => $edit_cmp_profile_cmp_profile_edit_request_dto);

#
# enable_cmp_profile test
#
# uncomment below and update the test
#my $enable_cmp_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $enable_cmp_profile_result = $api->enable_cmp_profile(cmp_profile_uuid => $enable_cmp_profile_cmp_profile_uuid);

#
# force_delete_cmp_profiles test
#
# uncomment below and update the test
#my $force_delete_cmp_profiles_request_body = undef; # replace NULL with a proper value
#my $force_delete_cmp_profiles_result = $api->force_delete_cmp_profiles(request_body => $force_delete_cmp_profiles_request_body);

#
# get_cmp_profile test
#
# uncomment below and update the test
#my $get_cmp_profile_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $get_cmp_profile_result = $api->get_cmp_profile(cmp_profile_uuid => $get_cmp_profile_cmp_profile_uuid);

#
# list_cmp_profiles test
#
# uncomment below and update the test
#my $list_cmp_profiles_result = $api->list_cmp_profiles();

#
# list_cmp_signing_certificates test
#
# uncomment below and update the test
#my $list_cmp_signing_certificates_result = $api->list_cmp_signing_certificates();

#
# update_ra_profile1 test
#
# uncomment below and update the test
#my $update_ra_profile1_cmp_profile_uuid = undef; # replace NULL with a proper value
#my $update_ra_profile1_ra_profile_uuid = undef; # replace NULL with a proper value
#my $update_ra_profile1_result = $api->update_ra_profile1(cmp_profile_uuid => $update_ra_profile1_cmp_profile_uuid, ra_profile_uuid => $update_ra_profile1_ra_profile_uuid);


done_testing();
