=begin comment

CZERTAINLY Core API

REST API for CZERTAINLY Core

The version of the OpenAPI document: 2.13.2-SNAPSHOT
Contact: info@czertainly.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package CZERTAINLY::ConnectorRegistrationApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use CZERTAINLY::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'CZERTAINLY::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = CZERTAINLY::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# register
#
# Register a Connector
#
# @param ConnectorRequestDto $connector_request_dto  (required)
{
    my $params = {
    'connector_request_dto' => {
        data_type => 'ConnectorRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'register' } = {
        summary => 'Register a Connector',
        params => $params,
        returns => 'UuidDto',
        };
}
# @return UuidDto
#
sub register {
    my ($self, %args) = @_;

    # verify the required parameter 'connector_request_dto' is set
    unless (exists $args{'connector_request_dto'}) {
      croak("Missing the required parameter 'connector_request_dto' when calling register");
    }

    # parse inputs
    my $_resource_path = '/v1/connector/register';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'connector_request_dto'}) {
        $_body_data = $args{'connector_request_dto'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UuidDto', $response);
    return $_response_object;
}

1;
