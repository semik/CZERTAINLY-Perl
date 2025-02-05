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

use_ok('CZERTAINLY::WorkflowTriggersManagementApi');

my $api = CZERTAINLY::WorkflowTriggersManagementApi->new();
isa_ok($api, 'CZERTAINLY::WorkflowTriggersManagementApi');

#
# create_trigger test
#
# uncomment below and update the test
#my $create_trigger_trigger_request_dto = undef; # replace NULL with a proper value
#my $create_trigger_result = $api->create_trigger(trigger_request_dto => $create_trigger_trigger_request_dto);

#
# delete_trigger test
#
# uncomment below and update the test
#my $delete_trigger_trigger_uuid = undef; # replace NULL with a proper value
#my $delete_trigger_result = $api->delete_trigger(trigger_uuid => $delete_trigger_trigger_uuid);

#
# get_trigger test
#
# uncomment below and update the test
#my $get_trigger_trigger_uuid = undef; # replace NULL with a proper value
#my $get_trigger_result = $api->get_trigger(trigger_uuid => $get_trigger_trigger_uuid);

#
# get_trigger_history test
#
# uncomment below and update the test
#my $get_trigger_history_trigger_uuid = undef; # replace NULL with a proper value
#my $get_trigger_history_association_object_uuid = undef; # replace NULL with a proper value
#my $get_trigger_history_result = $api->get_trigger_history(trigger_uuid => $get_trigger_history_trigger_uuid, association_object_uuid => $get_trigger_history_association_object_uuid);

#
# get_trigger_history_summary test
#
# uncomment below and update the test
#my $get_trigger_history_summary_association_object_uuid = undef; # replace NULL with a proper value
#my $get_trigger_history_summary_result = $api->get_trigger_history_summary(association_object_uuid => $get_trigger_history_summary_association_object_uuid);

#
# list_triggers test
#
# uncomment below and update the test
#my $list_triggers_resource = undef; # replace NULL with a proper value
#my $list_triggers_event_resource = undef; # replace NULL with a proper value
#my $list_triggers_result = $api->list_triggers(resource => $list_triggers_resource, event_resource => $list_triggers_event_resource);

#
# update_trigger test
#
# uncomment below and update the test
#my $update_trigger_trigger_uuid = undef; # replace NULL with a proper value
#my $update_trigger_update_trigger_request_dto = undef; # replace NULL with a proper value
#my $update_trigger_result = $api->update_trigger(trigger_uuid => $update_trigger_trigger_uuid, update_trigger_request_dto => $update_trigger_update_trigger_request_dto);


done_testing();
