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

use_ok('WWW::OpenAPIClient::ApprovalProfileInventoryApi');

my $api = WWW::OpenAPIClient::ApprovalProfileInventoryApi->new();
isa_ok($api, 'WWW::OpenAPIClient::ApprovalProfileInventoryApi');

#
# create_approval_profile test
#
# uncomment below and update the test
#my $create_approval_profile_approval_profile_request_dto = undef; # replace NULL with a proper value
#my $create_approval_profile_result = $api->create_approval_profile(approval_profile_request_dto => $create_approval_profile_approval_profile_request_dto);

#
# delete_approval_profile test
#
# uncomment below and update the test
#my $delete_approval_profile_uuid = undef; # replace NULL with a proper value
#my $delete_approval_profile_result = $api->delete_approval_profile(uuid => $delete_approval_profile_uuid);

#
# disable_approval_profile test
#
# uncomment below and update the test
#my $disable_approval_profile_uuid = undef; # replace NULL with a proper value
#my $disable_approval_profile_result = $api->disable_approval_profile(uuid => $disable_approval_profile_uuid);

#
# edit_approval_profile test
#
# uncomment below and update the test
#my $edit_approval_profile_uuid = undef; # replace NULL with a proper value
#my $edit_approval_profile_approval_profile_update_request_dto = undef; # replace NULL with a proper value
#my $edit_approval_profile_result = $api->edit_approval_profile(uuid => $edit_approval_profile_uuid, approval_profile_update_request_dto => $edit_approval_profile_approval_profile_update_request_dto);

#
# enable_approval_profile test
#
# uncomment below and update the test
#my $enable_approval_profile_uuid = undef; # replace NULL with a proper value
#my $enable_approval_profile_result = $api->enable_approval_profile(uuid => $enable_approval_profile_uuid);

#
# get_approval_profile test
#
# uncomment below and update the test
#my $get_approval_profile_uuid = undef; # replace NULL with a proper value
#my $get_approval_profile_approval_profile_for_version_dto = undef; # replace NULL with a proper value
#my $get_approval_profile_result = $api->get_approval_profile(uuid => $get_approval_profile_uuid, approval_profile_for_version_dto => $get_approval_profile_approval_profile_for_version_dto);

#
# list_approval_profiles test
#
# uncomment below and update the test
#my $list_approval_profiles_pagination_request_dto = undef; # replace NULL with a proper value
#my $list_approval_profiles_result = $api->list_approval_profiles(pagination_request_dto => $list_approval_profiles_pagination_request_dto);


done_testing();
