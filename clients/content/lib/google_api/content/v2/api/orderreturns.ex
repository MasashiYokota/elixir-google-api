# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Content.V2.Api.Orderreturns do
  @moduledoc """
  API calls for all endpoints tagged `Orderreturns`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves an order return from your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the order. This cannot be a multi-client account.
  *   `return_id` (*type:* `String.t`) - Merchant order return ID generated by Google.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.MerchantOrderReturn{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_orderreturns_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.MerchantOrderReturn.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def content_orderreturns_get(
        connection,
        merchant_id,
        return_id,
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
      |> Request.url("/{merchantId}/orderreturns/{returnId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "returnId" => URI.encode(return_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.MerchantOrderReturn{}])
  end

  @doc """
  Lists order returns in your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V2.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the account that manages the order. This cannot be a multi-client account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:createdEndDate` (*type:* `String.t`) - Obtains order returns created before this date (inclusively), in ISO 8601 format.
      *   `:createdStartDate` (*type:* `String.t`) - Obtains order returns created after this date (inclusively), in ISO 8601 format.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of order returns to return in the response, used for paging. The default value is 25 returns per page, and the maximum allowed value is 250 returns per page.
      *   `:orderBy` (*type:* `String.t`) - Return the results in the specified order.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V2.Model.OrderreturnsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_orderreturns_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.OrderreturnsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def content_orderreturns_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :createdEndDate => :query,
      :createdStartDate => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/orderreturns", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.OrderreturnsListResponse{}])
  end
end
