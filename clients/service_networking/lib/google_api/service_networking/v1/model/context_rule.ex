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

defmodule GoogleApi.ServiceNetworking.V1.Model.ContextRule do
  @moduledoc """
  A context rule provides information about the context for an individual API
  element.

  ## Attributes

  *   `allowedRequestExtensions` (*type:* `list(String.t)`, *default:* `nil`) - A list of full type names or extension IDs of extensions allowed in grpc
      side channel from client to backend.
  *   `allowedResponseExtensions` (*type:* `list(String.t)`, *default:* `nil`) - A list of full type names or extension IDs of extensions allowed in grpc
      side channel from backend to client.
  *   `provided` (*type:* `list(String.t)`, *default:* `nil`) - A list of full type names of provided contexts.
  *   `requested` (*type:* `list(String.t)`, *default:* `nil`) - A list of full type names of requested contexts.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies.

      Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedRequestExtensions => list(String.t()),
          :allowedResponseExtensions => list(String.t()),
          :provided => list(String.t()),
          :requested => list(String.t()),
          :selector => String.t()
        }

  field(:allowedRequestExtensions, type: :list)
  field(:allowedResponseExtensions, type: :list)
  field(:provided, type: :list)
  field(:requested, type: :list)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.ContextRule do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.ContextRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.ContextRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
