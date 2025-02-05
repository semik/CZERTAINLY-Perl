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

use_ok('CZERTAINLY::ConnectorRegistrationApi');

my $api = CZERTAINLY::ConnectorRegistrationApi->new();
isa_ok($api, 'CZERTAINLY::ConnectorRegistrationApi');

#
# register test
#
# uncomment below and update the test
#my $register_connector_request_dto = undef; # replace NULL with a proper value
#my $register_result = $api->register(connector_request_dto => $register_connector_request_dto);


done_testing();
