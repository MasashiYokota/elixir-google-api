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

defmodule GoogleApi.Games.V1.Model.EventUpdateRequest do
  @moduledoc """
  An event period update resource.

  ## Attributes

  *   `definitionId` (*type:* `String.t`, *default:* `nil`) - The ID of the event being modified in this update.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#eventUpdateRequest`.
  *   `updateCount` (*type:* `String.t`, *default:* `nil`) - The number of times this event occurred in this time period.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :definitionId => String.t(),
          :kind => String.t(),
          :updateCount => String.t()
        }

  field(:definitionId)
  field(:kind)
  field(:updateCount)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventUpdateRequest do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.EventUpdateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventUpdateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
