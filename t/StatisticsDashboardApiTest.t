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

use_ok('WWW::OpenAPIClient::StatisticsDashboardApi');

my $api = WWW::OpenAPIClient::StatisticsDashboardApi->new();
isa_ok($api, 'WWW::OpenAPIClient::StatisticsDashboardApi');

#
# get_statistics test
#
# uncomment below and update the test
#my $get_statistics_result = $api->get_statistics();


done_testing();
