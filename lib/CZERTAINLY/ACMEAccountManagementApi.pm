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
package CZERTAINLY::ACMEAccountManagementApi;

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
# bulk_disable_acme_account
#
# Disable multiple ACME Accounts
#
# @param ARRAY[string] $request_body ACME Account UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'ACME Account UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_disable_acme_account' } = {
        summary => 'Disable multiple ACME Accounts',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_disable_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_disable_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeAccounts/disable';

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
# bulk_enable_acme_account
#
# Enable multiple ACME Accounts
#
# @param ARRAY[string] $request_body ACME Account UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'ACME Account UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_enable_acme_account' } = {
        summary => 'Enable multiple ACME Accounts',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_enable_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_enable_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeAccounts/enable';

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
# bulk_revoke_acme_account
#
# Revoke multiple ACME Accounts
#
# @param ARRAY[string] $request_body ACME Account UUIDs (required)
{
    my $params = {
    'request_body' => {
        data_type => 'ARRAY[string]',
        description => 'ACME Account UUIDs',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'bulk_revoke_acme_account' } = {
        summary => 'Revoke multiple ACME Accounts',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub bulk_revoke_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'request_body' is set
    unless (exists $args{'request_body'}) {
      croak("Missing the required parameter 'request_body' when calling bulk_revoke_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeAccounts/revoke';

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
# disable_acme_account
#
# Disable ACME Account
#
# @param string $acme_profile_uuid ACME Profile UUID (required)
# @param string $acme_account_uuid ACME Account UUID (required)
{
    my $params = {
    'acme_profile_uuid' => {
        data_type => 'string',
        description => 'ACME Profile UUID',
        required => '1',
    },
    'acme_account_uuid' => {
        data_type => 'string',
        description => 'ACME Account UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'disable_acme_account' } = {
        summary => 'Disable ACME Account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub disable_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'acme_profile_uuid' is set
    unless (exists $args{'acme_profile_uuid'}) {
      croak("Missing the required parameter 'acme_profile_uuid' when calling disable_acme_account");
    }

    # verify the required parameter 'acme_account_uuid' is set
    unless (exists $args{'acme_account_uuid'}) {
      croak("Missing the required parameter 'acme_account_uuid' when calling disable_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}/disable';

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
    if ( exists $args{'acme_profile_uuid'}) {
        my $_base_variable = "{" . "acmeProfileUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_profile_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acme_account_uuid'}) {
        my $_base_variable = "{" . "acmeAccountUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_account_uuid'});
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
# enable_acme_account
#
# Enable ACME Account
#
# @param string $acme_profile_uuid ACME Profile UUID (required)
# @param string $acme_account_uuid ACME Account UUID (required)
{
    my $params = {
    'acme_profile_uuid' => {
        data_type => 'string',
        description => 'ACME Profile UUID',
        required => '1',
    },
    'acme_account_uuid' => {
        data_type => 'string',
        description => 'ACME Account UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'enable_acme_account' } = {
        summary => 'Enable ACME Account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub enable_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'acme_profile_uuid' is set
    unless (exists $args{'acme_profile_uuid'}) {
      croak("Missing the required parameter 'acme_profile_uuid' when calling enable_acme_account");
    }

    # verify the required parameter 'acme_account_uuid' is set
    unless (exists $args{'acme_account_uuid'}) {
      croak("Missing the required parameter 'acme_account_uuid' when calling enable_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}/enable';

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
    if ( exists $args{'acme_profile_uuid'}) {
        my $_base_variable = "{" . "acmeProfileUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_profile_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acme_account_uuid'}) {
        my $_base_variable = "{" . "acmeAccountUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_account_uuid'});
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
# get_acme_account
#
# Details of ACME Account
#
# @param string $acme_profile_uuid ACME Profile UUID (required)
# @param string $acme_account_uuid ACME Account UUID (required)
{
    my $params = {
    'acme_profile_uuid' => {
        data_type => 'string',
        description => 'ACME Profile UUID',
        required => '1',
    },
    'acme_account_uuid' => {
        data_type => 'string',
        description => 'ACME Account UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_acme_account' } = {
        summary => 'Details of ACME Account',
        params => $params,
        returns => 'AcmeAccountResponseDto',
        };
}
# @return AcmeAccountResponseDto
#
sub get_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'acme_profile_uuid' is set
    unless (exists $args{'acme_profile_uuid'}) {
      croak("Missing the required parameter 'acme_profile_uuid' when calling get_acme_account");
    }

    # verify the required parameter 'acme_account_uuid' is set
    unless (exists $args{'acme_account_uuid'}) {
      croak("Missing the required parameter 'acme_account_uuid' when calling get_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}';

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
    if ( exists $args{'acme_profile_uuid'}) {
        my $_base_variable = "{" . "acmeProfileUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_profile_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acme_account_uuid'}) {
        my $_base_variable = "{" . "acmeAccountUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_account_uuid'});
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
    my $_response_object = $self->{api_client}->deserialize('AcmeAccountResponseDto', $response);
    return $_response_object;
}

#
# list_acme_accounts
#
# List ACME Accounts
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'list_acme_accounts' } = {
        summary => 'List ACME Accounts',
        params => $params,
        returns => 'ARRAY[AcmeAccountListResponseDto]',
        };
}
# @return ARRAY[AcmeAccountListResponseDto]
#
sub list_acme_accounts {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/acmeAccounts';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[AcmeAccountListResponseDto]', $response);
    return $_response_object;
}

#
# revoke_acme_account
#
# Revoke ACME Account
#
# @param string $acme_profile_uuid ACME Profile UUID (required)
# @param string $acme_account_uuid ACME Account UUID (required)
{
    my $params = {
    'acme_profile_uuid' => {
        data_type => 'string',
        description => 'ACME Profile UUID',
        required => '1',
    },
    'acme_account_uuid' => {
        data_type => 'string',
        description => 'ACME Account UUID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'revoke_acme_account' } = {
        summary => 'Revoke ACME Account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub revoke_acme_account {
    my ($self, %args) = @_;

    # verify the required parameter 'acme_profile_uuid' is set
    unless (exists $args{'acme_profile_uuid'}) {
      croak("Missing the required parameter 'acme_profile_uuid' when calling revoke_acme_account");
    }

    # verify the required parameter 'acme_account_uuid' is set
    unless (exists $args{'acme_account_uuid'}) {
      croak("Missing the required parameter 'acme_account_uuid' when calling revoke_acme_account");
    }

    # parse inputs
    my $_resource_path = '/v1/acmeProfiles/{acmeProfileUuid}/acmeAccounts/{acmeAccountUuid}';

    my $_method = 'POST';
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
    if ( exists $args{'acme_profile_uuid'}) {
        my $_base_variable = "{" . "acmeProfileUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_profile_uuid'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'acme_account_uuid'}) {
        my $_base_variable = "{" . "acmeAccountUuid" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'acme_account_uuid'});
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

1;
