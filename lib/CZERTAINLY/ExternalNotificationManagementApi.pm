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
package CZERTAINLY::ExternalNotificationManagementApi;

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
# create_notification_instance
#
# Add Notification instance
#
# @param NotificationInstanceRequestDto $notification_instance_request_dto  (required)
{
    my $params = {
    'notification_instance_request_dto' => {
        data_type => 'NotificationInstanceRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_notification_instance' } = {
        summary => 'Add Notification instance',
        params => $params,
        returns => 'UuidDto',
        };
}
# @return UuidDto
#
sub create_notification_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'notification_instance_request_dto' is set
    unless (exists $args{'notification_instance_request_dto'}) {
      croak("Missing the required parameter 'notification_instance_request_dto' when calling create_notification_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/notificationInstances';

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
    if ( exists $args{'notification_instance_request_dto'}) {
        $_body_data = $args{'notification_instance_request_dto'};
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
# delete_notification_instance
#
# Delete Notification instance
#
# @param string $uuid Notification instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Notification instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_notification_instance' } = {
        summary => 'Delete Notification instance',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_notification_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling delete_notification_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/notificationInstances/{uuid}';

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
# edit_notification_instance
#
# Edit Notification instance
#
# @param string $uuid Notification instance UUID (required)
# @param NotificationInstanceUpdateRequestDto $notification_instance_update_request_dto  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Notification instance UUID',
        required => '1',
    },
    'notification_instance_update_request_dto' => {
        data_type => 'NotificationInstanceUpdateRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'edit_notification_instance' } = {
        summary => 'Edit Notification instance',
        params => $params,
        returns => 'NotificationInstanceDto',
        };
}
# @return NotificationInstanceDto
#
sub edit_notification_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling edit_notification_instance");
    }

    # verify the required parameter 'notification_instance_update_request_dto' is set
    unless (exists $args{'notification_instance_update_request_dto'}) {
      croak("Missing the required parameter 'notification_instance_update_request_dto' when calling edit_notification_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/notificationInstances/{uuid}';

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
    if ( exists $args{'notification_instance_update_request_dto'}) {
        $_body_data = $args{'notification_instance_update_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('NotificationInstanceDto', $response);
    return $_response_object;
}

#
# get_notification_instance
#
# Details of an Notification instance
#
# @param string $uuid Notification instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Notification instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_notification_instance' } = {
        summary => 'Details of an Notification instance',
        params => $params,
        returns => 'NotificationInstanceDto',
        };
}
# @return NotificationInstanceDto
#
sub get_notification_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling get_notification_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/notificationInstances/{uuid}';

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
    my $_response_object = $self->{api_client}->deserialize('NotificationInstanceDto', $response);
    return $_response_object;
}

#
# list_mapping_attributes
#
# List of mapping attributes
#
# @param string $connector_uuid Connector UUID (required)
# @param string $kind Kind (required)
{
    my $params = {
    'connector_uuid' => {
        data_type => 'string',
        description => 'Connector UUID',
        required => '1',
    },
    'kind' => {
        data_type => 'string',
        description => 'Kind',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_mapping_attributes' } = {
        summary => 'List of mapping attributes',
        params => $params,
        returns => 'ARRAY[DataAttribute]',
        };
}
# @return ARRAY[DataAttribute]
#
sub list_mapping_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'connector_uuid' is set
    unless (exists $args{'connector_uuid'}) {
      croak("Missing the required parameter 'connector_uuid' when calling list_mapping_attributes");
    }

    # verify the required parameter 'kind' is set
    unless (exists $args{'kind'}) {
      croak("Missing the required parameter 'kind' when calling list_mapping_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/notificationInstances/attributes/mapping/{connectorUuid}/{kind}';

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
    if ( exists $args{'connector_uuid'}) {
        my $_base_variable = "{" . "connectorUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'connector_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DataAttribute]', $response);
    return $_response_object;
}

#
# list_notification_instances
#
# List of available Notification instances
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_notification_instances' } = {
        summary => 'List of available Notification instances',
        params => $params,
        returns => 'ARRAY[NotificationInstanceDto]',
        };
}
# @return ARRAY[NotificationInstanceDto]
#
sub list_notification_instances {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/notificationInstances';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[NotificationInstanceDto]', $response);
    return $_response_object;
}

1;
