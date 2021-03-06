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

defmodule GoogleApi.PubSub.V1.Model.ModifyPushConfigRequest do
  @moduledoc """
  Request for the ModifyPushConfig method.

  ## Attributes

  *   `pushConfig` (*type:* `GoogleApi.PubSub.V1.Model.PushConfig.t`, *default:* `nil`) - Required. The push configuration for future deliveries. An empty `pushConfig` indicates that the Pub/Sub system should stop pushing messages from the given subscription and allow messages to be pulled and acknowledged - effectively pausing the subscription if `Pull` or `StreamingPull` is not called.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pushConfig => GoogleApi.PubSub.V1.Model.PushConfig.t()
        }

  field(:pushConfig, as: GoogleApi.PubSub.V1.Model.PushConfig)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ModifyPushConfigRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ModifyPushConfigRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ModifyPushConfigRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
