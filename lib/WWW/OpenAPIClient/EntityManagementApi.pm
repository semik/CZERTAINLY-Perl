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
package WWW::OpenAPIClient::EntityManagementApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_entity_instance
#
# Add Entity instance
#
# @param EntityInstanceRequestDto $entity_instance_request_dto  (required)
{
    my $params = {
    'entity_instance_request_dto' => {
        data_type => 'EntityInstanceRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_entity_instance' } = {
        summary => 'Add Entity instance',
        params => $params,
        returns => 'UuidDto',
        };
}
# @return UuidDto
#
sub create_entity_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_instance_request_dto' is set
    unless (exists $args{'entity_instance_request_dto'}) {
      croak("Missing the required parameter 'entity_instance_request_dto' when calling create_entity_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/entities';

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
    if ( exists $args{'entity_instance_request_dto'}) {
        $_body_data = $args{'entity_instance_request_dto'};
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
# delete_entity_instance
#
# Delete Entity instance
#
# @param string $entity_uuid Entity instance UUID (required)
{
    my $params = {
    'entity_uuid' => {
        data_type => 'string',
        description => 'Entity instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_entity_instance' } = {
        summary => 'Delete Entity instance',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_entity_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_uuid' is set
    unless (exists $args{'entity_uuid'}) {
      croak("Missing the required parameter 'entity_uuid' when calling delete_entity_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/{entityUuid}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'entity_uuid'}) {
        my $_base_variable = "{" . "entityUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'entity_uuid'});
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
# edit_entity_instance
#
# Edit Entity instance
#
# @param string $entity_uuid Entity instance UUID (required)
# @param EntityInstanceUpdateRequestDto $entity_instance_update_request_dto  (required)
{
    my $params = {
    'entity_uuid' => {
        data_type => 'string',
        description => 'Entity instance UUID',
        required => '1',
    },
    'entity_instance_update_request_dto' => {
        data_type => 'EntityInstanceUpdateRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'edit_entity_instance' } = {
        summary => 'Edit Entity instance',
        params => $params,
        returns => 'EntityInstanceDto',
        };
}
# @return EntityInstanceDto
#
sub edit_entity_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_uuid' is set
    unless (exists $args{'entity_uuid'}) {
      croak("Missing the required parameter 'entity_uuid' when calling edit_entity_instance");
    }

    # verify the required parameter 'entity_instance_update_request_dto' is set
    unless (exists $args{'entity_instance_update_request_dto'}) {
      croak("Missing the required parameter 'entity_instance_update_request_dto' when calling edit_entity_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/{entityUuid}';

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
    if ( exists $args{'entity_uuid'}) {
        my $_base_variable = "{" . "entityUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'entity_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'entity_instance_update_request_dto'}) {
        $_body_data = $args{'entity_instance_update_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('EntityInstanceDto', $response);
    return $_response_object;
}

#
# get_entity_instance
#
# Get Entity instance details
#
# @param string $entity_uuid Entity instance UUID (required)
{
    my $params = {
    'entity_uuid' => {
        data_type => 'string',
        description => 'Entity instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_entity_instance' } = {
        summary => 'Get Entity instance details',
        params => $params,
        returns => 'EntityInstanceDto',
        };
}
# @return EntityInstanceDto
#
sub get_entity_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_uuid' is set
    unless (exists $args{'entity_uuid'}) {
      croak("Missing the required parameter 'entity_uuid' when calling get_entity_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/{entityUuid}';

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
    if ( exists $args{'entity_uuid'}) {
        my $_base_variable = "{" . "entityUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'entity_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('EntityInstanceDto', $response);
    return $_response_object;
}

#
# get_searchable_field_information2
#
# Get Entities searchable fields information
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_searchable_field_information2' } = {
        summary => 'Get Entities searchable fields information',
        params => $params,
        returns => 'ARRAY[SearchFieldDataByGroupDto]',
        };
}
# @return ARRAY[SearchFieldDataByGroupDto]
#
sub get_searchable_field_information2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/entities/search';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[SearchFieldDataByGroupDto]', $response);
    return $_response_object;
}

#
# list_entity_instances
#
# List Entity instances
#
# @param SearchRequestDto $search_request_dto  (required)
{
    my $params = {
    'search_request_dto' => {
        data_type => 'SearchRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_entity_instances' } = {
        summary => 'List Entity instances',
        params => $params,
        returns => 'EntityInstanceResponseDto',
        };
}
# @return EntityInstanceResponseDto
#
sub list_entity_instances {
    my ($self, %args) = @_;

    # verify the required parameter 'search_request_dto' is set
    unless (exists $args{'search_request_dto'}) {
      croak("Missing the required parameter 'search_request_dto' when calling list_entity_instances");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/list';

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
    if ( exists $args{'search_request_dto'}) {
        $_body_data = $args{'search_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('EntityInstanceResponseDto', $response);
    return $_response_object;
}

#
# list_location_attributes
#
# List Location Attributes
#
# @param string $entity_uuid Entity instance UUID (required)
{
    my $params = {
    'entity_uuid' => {
        data_type => 'string',
        description => 'Entity instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_location_attributes' } = {
        summary => 'List Location Attributes',
        params => $params,
        returns => 'ARRAY[BaseAttributeDto]',
        };
}
# @return ARRAY[BaseAttributeDto]
#
sub list_location_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_uuid' is set
    unless (exists $args{'entity_uuid'}) {
      croak("Missing the required parameter 'entity_uuid' when calling list_location_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/{entityUuid}/attributes/location';

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
    if ( exists $args{'entity_uuid'}) {
        my $_base_variable = "{" . "entityUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'entity_uuid'});
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
# validate_location_attributes
#
# Validate Location Attributes
#
# @param string $entity_uuid Entity instance UUID (required)
# @param ARRAY[RequestAttributeDto] $request_attribute_dto  (required)
{
    my $params = {
    'entity_uuid' => {
        data_type => 'string',
        description => 'Entity instance UUID',
        required => '1',
    },
    'request_attribute_dto' => {
        data_type => 'ARRAY[RequestAttributeDto]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'validate_location_attributes' } = {
        summary => 'Validate Location Attributes',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub validate_location_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'entity_uuid' is set
    unless (exists $args{'entity_uuid'}) {
      croak("Missing the required parameter 'entity_uuid' when calling validate_location_attributes");
    }

    # verify the required parameter 'request_attribute_dto' is set
    unless (exists $args{'request_attribute_dto'}) {
      croak("Missing the required parameter 'request_attribute_dto' when calling validate_location_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/entities/{entityUuid}/attributes/location/validate';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'entity_uuid'}) {
        my $_base_variable = "{" . "entityUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'entity_uuid'});
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
