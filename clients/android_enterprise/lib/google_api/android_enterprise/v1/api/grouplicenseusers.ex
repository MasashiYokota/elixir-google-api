# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Api.Grouplicenseusers do
  @moduledoc """
  API calls for all endpoints tagged `Grouplicenseusers`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves the IDs of the users who have been granted entitlements under the license.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String.t): The ID of the enterprise.
  - group_license_id (String.t): The ID of the product the group license is for, e.g. \&quot;app:com.google.android.gm\&quot;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_grouplicenseusers_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse.t()}
          | {:error, Tesla.Env.t()}
  def androidenterprise_grouplicenseusers_list(
        connection,
        enterprise_id,
        group_license_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users", %{
        "enterpriseId" => URI.encode(enterprise_id, &URI.char_unreserved?/1),
        "groupLicenseId" => URI.encode(group_license_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse{}]
    )
  end
end
