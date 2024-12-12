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

use_ok('WWW::OpenAPIClient::ApprovalInventoryApi');

my $api = WWW::OpenAPIClient::ApprovalInventoryApi->new();
isa_ok($api, 'WWW::OpenAPIClient::ApprovalInventoryApi');

#
# approve_approval test
#
# uncomment below and update the test
#my $approve_approval_uuid = undef; # replace NULL with a proper value
#my $approve_approval_result = $api->approve_approval(uuid => $approve_approval_uuid);

#
# approve_approval_recipient test
#
# uncomment below and update the test
#my $approve_approval_recipient_uuid = undef; # replace NULL with a proper value
#my $approve_approval_recipient_user_approval_dto = undef; # replace NULL with a proper value
#my $approve_approval_recipient_result = $api->approve_approval_recipient(uuid => $approve_approval_recipient_uuid, user_approval_dto => $approve_approval_recipient_user_approval_dto);

#
# get_approval test
#
# uncomment below and update the test
#my $get_approval_uuid = undef; # replace NULL with a proper value
#my $get_approval_result = $api->get_approval(uuid => $get_approval_uuid);

#
# list_approvals test
#
# uncomment below and update the test
#my $list_approvals_pagination_request_dto = undef; # replace NULL with a proper value
#my $list_approvals_result = $api->list_approvals(pagination_request_dto => $list_approvals_pagination_request_dto);

#
# list_user_approvals test
#
# uncomment below and update the test
#my $list_user_approvals_pagination_request_dto = undef; # replace NULL with a proper value
#my $list_user_approvals_approval_user_dto = undef; # replace NULL with a proper value
#my $list_user_approvals_result = $api->list_user_approvals(pagination_request_dto => $list_user_approvals_pagination_request_dto, approval_user_dto => $list_user_approvals_approval_user_dto);

#
# reject_approval test
#
# uncomment below and update the test
#my $reject_approval_uuid = undef; # replace NULL with a proper value
#my $reject_approval_result = $api->reject_approval(uuid => $reject_approval_uuid);

#
# reject_approval_recipient test
#
# uncomment below and update the test
#my $reject_approval_recipient_uuid = undef; # replace NULL with a proper value
#my $reject_approval_recipient_user_approval_dto = undef; # replace NULL with a proper value
#my $reject_approval_recipient_result = $api->reject_approval_recipient(uuid => $reject_approval_recipient_uuid, user_approval_dto => $reject_approval_recipient_user_approval_dto);


done_testing();
