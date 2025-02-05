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
package CZERTAINLY::ConnectorManagementApi;

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
# approve
#
# Approve a Connector
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'approve' } = {
        summary => 'Approve a Connector',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub approve {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling approve");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/approve';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# bulk_approve
#
# Approve multiple Connector
#
# @param ARRAY[string] $request_body Connector UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Connector UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_approve' } = {
        summary => 'Approve multiple Connector',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_approve {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_approve");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/approve';

    my $_method = 'PUT';
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
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# bulk_delete_connector
#
# Delete multiple Connectors
#
# @param ARRAY[string] $request_body Connector UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Connector UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_delete_connector' } = {
        summary => 'Delete multiple Connectors',
        params => $params,
        returns => 'ARRAY[BulkActionMessageDto]',
        };
}
# @return ARRAY[BulkActionMessageDto]
#
sub bulk_delete_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_delete_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors';

    my $_method = 'DELETE';
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
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BulkActionMessageDto]', $response);
    return $_response_object;
}

#
# bulk_reconnect
#
# Reconnect multiple Connectors
#
# @param ARRAY[string] $request_body Connector UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Connector UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_reconnect' } = {
        summary => 'Reconnect multiple Connectors',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_reconnect {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_reconnect");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/reconnect';

    my $_method = 'PUT';
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
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# check_health
#
# Check Health of a Connector
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'check_health' } = {
        summary => 'Check Health of a Connector',
        params => $params,
        returns => 'HealthDto',
        };
}
# @return HealthDto
#
sub check_health {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling check_health");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/health';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('HealthDto', $response);
    return $_response_object;
}

#
# connect
#
# Connect to a Connector
#
# @param ConnectRequestDto $connect_request_dto  (required)
{
    my $params = {
    'connect_request_dto' => {
        data_type => 'ConnectRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'connect' } = {
        summary => 'Connect to a Connector',
        params => $params,
        returns => 'ARRAY[ConnectDto]',
        };
}
# @return ARRAY[ConnectDto]
#
sub connect {
    my ($self, %args) = @_;

    # verify the required parameter 'connect_request_dto' is set
    unless (exists $args{'connect_request_dto'}) {
      croak("Missing the required parameter 'connect_request_dto' when calling connect");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/connect';

    my $_method = 'PUT';
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
    if ( exists $args{'connect_request_dto'}) {
        $_body_data = $args{'connect_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConnectDto]', $response);
    return $_response_object;
}

#
# create_connector
#
# Create a new Connector
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
    __PACKAGE__->method_documentation->{ 'create_connector' } = {
        summary => 'Create a new Connector',
        params => $params,
        returns => 'UuidDto',
        };
}
# @return UuidDto
#
sub create_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'connector_request_dto' is set
    unless (exists $args{'connector_request_dto'}) {
      croak("Missing the required parameter 'connector_request_dto' when calling create_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors';

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

#
# delete_connector
#
# Delete a Connector
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_connector' } = {
        summary => 'Delete a Connector',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling delete_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# edit_connector
#
# Edit a Connector
#
# @param string $uuid Connector UUID (required)
# @param ConnectorUpdateRequestDto $connector_update_request_dto  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    'connector_update_request_dto' => {
        data_type => 'ConnectorUpdateRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'edit_connector' } = {
        summary => 'Edit a Connector',
        params => $params,
        returns => 'ConnectorDto',
        };
}
# @return ConnectorDto
#
sub edit_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling edit_connector");
    }

    # verify the required parameter 'connector_update_request_dto' is set
    unless (exists $args{'connector_update_request_dto'}) {
      croak("Missing the required parameter 'connector_update_request_dto' when calling edit_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'connector_update_request_dto'}) {
        $_body_data = $args{'connector_update_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('ConnectorDto', $response);
    return $_response_object;
}

#
# force_delete_connector
#
# Force Delete multiple Connectors
#
# @param ARRAY[string] $request_body Connector UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Connector UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'force_delete_connector' } = {
        summary => 'Force Delete multiple Connectors',
        params => $params,
        returns => 'ARRAY[BulkActionMessageDto]',
        };
}
# @return ARRAY[BulkActionMessageDto]
#
sub force_delete_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling force_delete_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/force';

    my $_method = 'DELETE';
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
    if ( exists $args{'request_body'}) {
        $_body_data = $args{'request_body'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BulkActionMessageDto]', $response);
    return $_response_object;
}

#
# get_attributes
#
# Get Attributes from a Connector
#
# @param string $uuid Connector UUID (required)
# @param FunctionGroupCode $function_group Function Group name (required)
# @param string $kind Kind (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    'function_group' => {
        data_type => 'FunctionGroupCode',
        description => 'Function Group name',
        required => '1',
    },
    'kind' => {
        data_type => 'string',
        description => 'Kind',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_attributes' } = {
        summary => 'Get Attributes from a Connector',
        params => $params,
        returns => 'ARRAY[BaseAttributeDto]',
        };
}
# @return ARRAY[BaseAttributeDto]
#
sub get_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling get_attributes");
    }

    # verify the required parameter 'function_group' is set
    unless (exists $args{'function_group'}) {
      croak("Missing the required parameter 'function_group' when calling get_attributes");
    }

    # verify the required parameter 'kind' is set
    unless (exists $args{'kind'}) {
      croak("Missing the required parameter 'kind' when calling get_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/attributes/{functionGroup}/{kind}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'function_group'}) {
        my $_base_variable = "{" . "functionGroup" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'function_group'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'kind'}) {
        my $_base_variable = "{" . "kind" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'kind'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BaseAttributeDto]', $response);
    return $_response_object;
}

#
# get_attributes_all
#
# Get attributes of all Function Groups
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_attributes_all' } = {
        summary => 'Get attributes of all Function Groups',
        params => $params,
        returns => 'HASH[string,HASH[string,ARRAY[BaseAttributeDto]]]',
        };
}
# @return HASH[string,HASH[string,ARRAY[BaseAttributeDto]]]
#
sub get_attributes_all {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling get_attributes_all");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/attributes';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('HASH[string,HASH[string,ARRAY[BaseAttributeDto]]]', $response);
    return $_response_object;
}

#
# get_connector
#
# Get details of a Connector
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_connector' } = {
        summary => 'Get details of a Connector',
        params => $params,
        returns => 'ConnectorDto',
        };
}
# @return ConnectorDto
#
sub get_connector {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling get_connector");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ConnectorDto', $response);
    return $_response_object;
}

#
# list_connectors
#
# List Connectors by Function Group and Kind
#
# @param FunctionGroupCode $function_group  (optional)
# @param string $kind  (optional)
# @param ConnectorStatus $status  (optional)
{
    my $params = {
    'function_group' => {
        data_type => 'FunctionGroupCode',
        description => '',
        required => '0',
    },
    'kind' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    'status' => {
        data_type => 'ConnectorStatus',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_connectors' } = {
        summary => 'List Connectors by Function Group and Kind',
        params => $params,
        returns => 'ARRAY[ConnectorDto]',
        };
}
# @return ARRAY[ConnectorDto]
#
sub list_connectors {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/connectors';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'function_group'}) {
        $query_params->{'functionGroup'} = $self->{api_client}->to_query_value($args{'function_group'});
    }

    # query params
    if ( exists $args{'kind'}) {
        $query_params->{'kind'} = $self->{api_client}->to_query_value($args{'kind'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConnectorDto]', $response);
    return $_response_object;
}

#
# reconnect
#
# Reconnect to a Connector
#
# @param string $uuid Connector UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'reconnect' } = {
        summary => 'Reconnect to a Connector',
        params => $params,
        returns => 'ARRAY[ConnectDto]',
        };
}
# @return ARRAY[ConnectDto]
#
sub reconnect {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling reconnect");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/reconnect';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ConnectDto]', $response);
    return $_response_object;
}

#
# validate_attributes
#
# Validate Attributes
#
# @param string $uuid Connector UUID (required)
# @param string $function_group Function Group name (required)
# @param string $kind Kind (required)
# @param ARRAY[RequestAttributeDto] $request_attribute_dto  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    'function_group' => {
        data_type => 'string',
        description => 'Function Group name',
        required => '1',
    },
    'kind' => {
        data_type => 'string',
        description => 'Kind',
        required => '1',
    },
    'request_attribute_dto' => {
        data_type => 'ARRAY[RequestAttributeDto]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'validate_attributes' } = {
        summary => 'Validate Attributes',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub validate_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling validate_attributes");
    }

    # verify the required parameter 'function_group' is set
    unless (exists $args{'function_group'}) {
      croak("Missing the required parameter 'function_group' when calling validate_attributes");
    }

    # verify the required parameter 'kind' is set
    unless (exists $args{'kind'}) {
      croak("Missing the required parameter 'kind' when calling validate_attributes");
    }

    # verify the required parameter 'request_attribute_dto' is set
    unless (exists $args{'request_attribute_dto'}) {
      croak("Missing the required parameter 'request_attribute_dto' when calling validate_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/connectors/{uuid}/{functionGroup}/{kind}/validate';

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

    # path params
    if ( exists $args{'uuid'}) {
        my $_base_variable = "{" . "uuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'function_group'}) {
        my $_base_variable = "{" . "functionGroup" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'function_group'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'kind'}) {
        my $_base_variable = "{" . "kind" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'kind'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'request_attribute_dto'}) {
        $_body_data = $args{'request_attribute_dto'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
