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

use_ok('CZERTAINLY::CredentialManagementApi');

my $api = CZERTAINLY::CredentialManagementApi->new();
isa_ok($api, 'CZERTAINLY::CredentialManagementApi');

#
# bulk_delete_credential test
#
# uncomment below and update the test
#my $bulk_delete_credential_request_body = undef; # replace NULL with a proper value
#my $bulk_delete_credential_result = $api->bulk_delete_credential(request_body => $bulk_delete_credential_request_body);

#
# create_credential test
#
# uncomment below and update the test
#my $create_credential_credential_request_dto = undef; # replace NULL with a proper value
#my $create_credential_result = $api->create_credential(credential_request_dto => $create_credential_credential_request_dto);

#
# delete_credential test
#
# uncomment below and update the test
#my $delete_credential_uuid = undef; # replace NULL with a proper value
#my $delete_credential_result = $api->delete_credential(uuid => $delete_credential_uuid);

#
# disable_credential test
#
# uncomment below and update the test
#my $disable_credential_uuid = undef; # replace NULL with a proper value
#my $disable_credential_result = $api->disable_credential(uuid => $disable_credential_uuid);

#
# edit_credential test
#
# uncomment below and update the test
#my $edit_credential_uuid = undef; # replace NULL with a proper value
#my $edit_credential_credential_update_request_dto = undef; # replace NULL with a proper value
#my $edit_credential_result = $api->edit_credential(uuid => $edit_credential_uuid, credential_update_request_dto => $edit_credential_credential_update_request_dto);

#
# enable_credential test
#
# uncomment below and update the test
#my $enable_credential_uuid = undef; # replace NULL with a proper value
#my $enable_credential_result = $api->enable_credential(uuid => $enable_credential_uuid);

#
# get_credential test
#
# uncomment below and update the test
#my $get_credential_uuid = undef; # replace NULL with a proper value
#my $get_credential_result = $api->get_credential(uuid => $get_credential_uuid);

#
# list_credentials test
#
# uncomment below and update the test
#my $list_credentials_result = $api->list_credentials();


done_testing();
