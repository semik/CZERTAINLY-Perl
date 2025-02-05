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
package CZERTAINLY::AuthorityManagementApi;

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
# bulk_delete_authority_instance
#
# Delete multiple Authority instances
#
# @param ARRAY[string] $request_body Authority Instance UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Authority Instance UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_delete_authority_instance' } = {
        summary => 'Delete multiple Authority instances',
        params => $params,
        returns => 'ARRAY[BulkActionMessageDto]',
        };
}
# @return ARRAY[BulkActionMessageDto]
#
sub bulk_delete_authority_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_delete_authority_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities';

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
# create_authority_instance
#
# Add Authority instance
#
# @param AuthorityInstanceRequestDto $authority_instance_request_dto  (required)
{
    my $params = {
    'authority_instance_request_dto' => {
        data_type => 'AuthorityInstanceRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_authority_instance' } = {
        summary => 'Add Authority instance',
        params => $params,
        returns => 'UuidDto',
        };
}
# @return UuidDto
#
sub create_authority_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'authority_instance_request_dto' is set
    unless (exists $args{'authority_instance_request_dto'}) {
      croak("Missing the required parameter 'authority_instance_request_dto' when calling create_authority_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities';

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
    if ( exists $args{'authority_instance_request_dto'}) {
        $_body_data = $args{'authority_instance_request_dto'};
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
# delete_authority_instance
#
# Delete Authority instance
#
# @param string $uuid Authority instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_authority_instance' } = {
        summary => 'Delete Authority instance',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_authority_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling delete_authority_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}';

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
# edit_authority_instance
#
# Edit Authority instance
#
# @param string $uuid Authority instance UUID (required)
# @param AuthorityInstanceUpdateRequestDto $authority_instance_update_request_dto  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    'authority_instance_update_request_dto' => {
        data_type => 'AuthorityInstanceUpdateRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'edit_authority_instance' } = {
        summary => 'Edit Authority instance',
        params => $params,
        returns => 'AuthorityInstanceDto',
        };
}
# @return AuthorityInstanceDto
#
sub edit_authority_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling edit_authority_instance");
    }

    # verify the required parameter 'authority_instance_update_request_dto' is set
    unless (exists $args{'authority_instance_update_request_dto'}) {
      croak("Missing the required parameter 'authority_instance_update_request_dto' when calling edit_authority_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}';

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
    if ( exists $args{'authority_instance_update_request_dto'}) {
        $_body_data = $args{'authority_instance_update_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('AuthorityInstanceDto', $response);
    return $_response_object;
}

#
# force_delete_authority_instances
#
# Force delete multiple Authority instances
#
# @param ARRAY[string] $request_body  (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'force_delete_authority_instances' } = {
        summary => 'Force delete multiple Authority instances',
        params => $params,
        returns => 'ARRAY[BulkActionMessageDto]',
        };
}
# @return ARRAY[BulkActionMessageDto]
#
sub force_delete_authority_instances {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling force_delete_authority_instances");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/force';

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
# get_authority_instance
#
# Details of an Authority instance
#
# @param string $uuid Authority instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_authority_instance' } = {
        summary => 'Details of an Authority instance',
        params => $params,
        returns => 'AuthorityInstanceDto',
        };
}
# @return AuthorityInstanceDto
#
sub get_authority_instance {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling get_authority_instance");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}';

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
    my $_response_object = $self->{api_client}->deserialize('AuthorityInstanceDto', $response);
    return $_response_object;
}

#
# list_authority_instances
#
# List of available Authority instances
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_authority_instances' } = {
        summary => 'List of available Authority instances',
        params => $params,
        returns => 'ARRAY[AuthorityInstanceDto]',
        };
}
# @return ARRAY[AuthorityInstanceDto]
#
sub list_authority_instances {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/authorities';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[AuthorityInstanceDto]', $response);
    return $_response_object;
}

#
# list_cas_in_profile
#
# 
#
# @param string $uuid Authority instance UUID (required)
# @param int $end_entity_profile_id  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    'end_entity_profile_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_cas_in_profile' } = {
        summary => '',
        params => $params,
        returns => 'ARRAY[NameAndIdDto]',
        };
}
# @return ARRAY[NameAndIdDto]
#
sub list_cas_in_profile {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling list_cas_in_profile");
    }

    # verify the required parameter 'end_entity_profile_id' is set
    unless (exists $args{'end_entity_profile_id'}) {
      croak("Missing the required parameter 'end_entity_profile_id' when calling list_cas_in_profile");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}/endentityprofiles/{endEntityProfileId}/cas';

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
    if ( exists $args{'end_entity_profile_id'}) {
        my $_base_variable = "{" . "endEntityProfileId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'end_entity_profile_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[NameAndIdDto]', $response);
    return $_response_object;
}

#
# list_certificate_profiles
#
# 
#
# @param string $uuid Authority instance UUID (required)
# @param int $end_entity_profile_id  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    'end_entity_profile_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_certificate_profiles' } = {
        summary => '',
        params => $params,
        returns => 'ARRAY[NameAndIdDto]',
        };
}
# @return ARRAY[NameAndIdDto]
#
sub list_certificate_profiles {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling list_certificate_profiles");
    }

    # verify the required parameter 'end_entity_profile_id' is set
    unless (exists $args{'end_entity_profile_id'}) {
      croak("Missing the required parameter 'end_entity_profile_id' when calling list_certificate_profiles");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}/endentityprofiles/{endEntityProfileId}/certificateprofiles';

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
    if ( exists $args{'end_entity_profile_id'}) {
        my $_base_variable = "{" . "endEntityProfileId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'end_entity_profile_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[NameAndIdDto]', $response);
    return $_response_object;
}

#
# list_entity_profiles
#
# 
#
# @param string $uuid Authority instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_entity_profiles' } = {
        summary => '',
        params => $params,
        returns => 'ARRAY[NameAndIdDto]',
        };
}
# @return ARRAY[NameAndIdDto]
#
sub list_entity_profiles {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling list_entity_profiles");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}/endentityprofiles';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[NameAndIdDto]', $response);
    return $_response_object;
}

#
# list_ra_profile_attributes
#
# List RA Profile Attributes
#
# @param string $uuid Authority instance UUID (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_ra_profile_attributes' } = {
        summary => 'List RA Profile Attributes',
        params => $params,
        returns => 'ARRAY[BaseAttributeDto]',
        };
}
# @return ARRAY[BaseAttributeDto]
#
sub list_ra_profile_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling list_ra_profile_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}/attributes/raProfile';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BaseAttributeDto]', $response);
    return $_response_object;
}

#
# validate_ra_profile_attributes
#
# Validate RA Profile Attributes
#
# @param string $uuid Authority instance UUID (required)
# @param ARRAY[RequestAttributeDto] $request_attribute_dto  (required)
{
    my $params = {
    'uuid' => {
        data_type => 'string',
        description => 'Authority instance UUID',
        required => '1',
    },
    'request_attribute_dto' => {
        data_type => 'ARRAY[RequestAttributeDto]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'validate_ra_profile_attributes' } = {
        summary => 'Validate RA Profile Attributes',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub validate_ra_profile_attributes {
    my ($self, %args) = @_;

    # verify the required parameter 'uuid' is set
    unless (exists $args{'uuid'}) {
      croak("Missing the required parameter 'uuid' when calling validate_ra_profile_attributes");
    }

    # verify the required parameter 'request_attribute_dto' is set
    unless (exists $args{'request_attribute_dto'}) {
      croak("Missing the required parameter 'request_attribute_dto' when calling validate_ra_profile_attributes");
    }

    # parse inputs
    my $_resource_path = '/v1/authorities/{uuid}/attributes/raProfile/validate';

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
