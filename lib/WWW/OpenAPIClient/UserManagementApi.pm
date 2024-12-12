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
package WWW::OpenAPIClient::UserManagementApi;

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
# add_role
#
# Add role to User
#
# @param string $user_uuid User UUID (required)
# @param string $role_uuid Role UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    'role_uuid' => {
        data_type => 'string',
        description => 'Role UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_role' } = {
        summary => 'Add role to User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub add_role {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling add_role");
    }

    # verify the required parameter 'role_uuid' is set
    unless (exists $args{'role_uuid'}) {
      croak("Missing the required parameter 'role_uuid' when calling add_role");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/roles/{roleUuid}';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'role_uuid'}) {
        my $_base_variable = "{" . "roleUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'role_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# create_user
#
# Create User
#
# @param AddUserRequestDto $add_user_request_dto  (required)
{
    my $params = {
    'add_user_request_dto' => {
        data_type => 'AddUserRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_user' } = {
        summary => 'Create User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub create_user {
    my ($self, %args) = @_;

    # verify the required parameter 'add_user_request_dto' is set
    unless (exists $args{'add_user_request_dto'}) {
      croak("Missing the required parameter 'add_user_request_dto' when calling create_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users';

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
    if ( exists $args{'add_user_request_dto'}) {
        $_body_data = $args{'add_user_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# delete_user
#
# Delete User
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user' } = {
        summary => 'Delete User',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling delete_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
# disable_user
#
# Disable User
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'disable_user' } = {
        summary => 'Disable User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub disable_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling disable_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/disable';

    my $_method = 'PATCH';
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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# enable_user
#
# Enable User
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'enable_user' } = {
        summary => 'Enable User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub enable_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling enable_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/enable';

    my $_method = 'PATCH';
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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# get_permissions
#
# Get User permissions
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_permissions' } = {
        summary => 'Get User permissions',
        params => $params,
        returns => 'SubjectPermissionsDto',
        };
}
# @return SubjectPermissionsDto
#
sub get_permissions {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling get_permissions");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/permissions';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('SubjectPermissionsDto', $response);
    return $_response_object;
}

#
# get_user
#
# Get user details
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user' } = {
        summary => 'Get user details',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub get_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling get_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# get_user_roles
#
# Get User Roles
#
# @param string $user_uuid User UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_roles' } = {
        summary => 'Get User Roles',
        params => $params,
        returns => 'ARRAY[RoleDto]',
        };
}
# @return ARRAY[RoleDto]
#
sub get_user_roles {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling get_user_roles");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/roles';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[RoleDto]', $response);
    return $_response_object;
}

#
# identify_user
#
# Identify User
#
# @param UserIdentificationRequestDto $user_identification_request_dto  (required)
{
    my $params = {
    'user_identification_request_dto' => {
        data_type => 'UserIdentificationRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'identify_user' } = {
        summary => 'Identify User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub identify_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_identification_request_dto' is set
    unless (exists $args{'user_identification_request_dto'}) {
      croak("Missing the required parameter 'user_identification_request_dto' when calling identify_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/identify';

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
    if ( exists $args{'user_identification_request_dto'}) {
        $_body_data = $args{'user_identification_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# list_users
#
# List Users
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_users' } = {
        summary => 'List Users',
        params => $params,
        returns => 'ARRAY[UserDto]',
        };
}
# @return ARRAY[UserDto]
#
sub list_users {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/users';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[UserDto]', $response);
    return $_response_object;
}

#
# remove_role
#
# Remove role from User
#
# @param string $user_uuid User UUID (required)
# @param string $role_uuid Role UUID (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    'role_uuid' => {
        data_type => 'string',
        description => 'Role UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'remove_role' } = {
        summary => 'Remove role from User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub remove_role {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling remove_role");
    }

    # verify the required parameter 'role_uuid' is set
    unless (exists $args{'role_uuid'}) {
      croak("Missing the required parameter 'role_uuid' when calling remove_role");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/roles/{roleUuid}';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'role_uuid'}) {
        my $_base_variable = "{" . "roleUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'role_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# update_roles
#
# Add roles to User
#
# @param string $user_uuid User UUID (required)
# @param ARRAY[string] $request_body Role UUIDs (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'Role UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_roles' } = {
        summary => 'Add roles to User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub update_roles {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling update_roles");
    }

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling update_roles");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}/roles';

    my $_method = 'PATCH';
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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

#
# update_user
#
# Update User
#
# @param string $user_uuid User UUID (required)
# @param UpdateUserRequestDto $update_user_request_dto  (required)
{
    my $params = {
    'user_uuid' => {
        data_type => 'string',
        description => 'User UUID',
        required => '1',
    },
    'update_user_request_dto' => {
        data_type => 'UpdateUserRequestDto',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user' } = {
        summary => 'Update User',
        params => $params,
        returns => 'UserDetailDto',
        };
}
# @return UserDetailDto
#
sub update_user {
    my ($self, %args) = @_;

    # verify the required parameter 'user_uuid' is set
    unless (exists $args{'user_uuid'}) {
      croak("Missing the required parameter 'user_uuid' when calling update_user");
    }

    # verify the required parameter 'update_user_request_dto' is set
    unless (exists $args{'update_user_request_dto'}) {
      croak("Missing the required parameter 'update_user_request_dto' when calling update_user");
    }

    # parse inputs
    my $_resource_path = '/v1/users/{userUuid}';

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
    if ( exists $args{'user_uuid'}) {
        my $_base_variable = "{" . "userUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'update_user_request_dto'}) {
        $_body_data = $args{'update_user_request_dto'};
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
    my $_response_object = $self->{api_client}->deserialize('UserDetailDto', $response);
    return $_response_object;
}

1;
