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

defmodule GoogleApi.Games.V1.Model.InstanceIosDetails do
  @moduledoc """
  The iOS details resource.

  ## Attributes

  *   `bundleIdentifier` (*type:* `String.t`, *default:* `nil`) - Bundle identifier.
  *   `itunesAppId` (*type:* `String.t`, *default:* `nil`) - iTunes App ID.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#instanceIosDetails`.
  *   `preferredForIpad` (*type:* `boolean()`, *default:* `nil`) - Indicates that this instance is the default for new installations on iPad devices.
  *   `preferredForIphone` (*type:* `boolean()`, *default:* `nil`) - Indicates that this instance is the default for new installations on iPhone devices.
  *   `supportIpad` (*type:* `boolean()`, *default:* `nil`) - Flag to indicate if this instance supports iPad.
  *   `supportIphone` (*type:* `boolean()`, *default:* `nil`) - Flag to indicate if this instance supports iPhone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundleIdentifier => String.t(),
          :itunesAppId => String.t(),
          :kind => String.t(),
          :preferredForIpad => boolean(),
          :preferredForIphone => boolean(),
          :supportIpad => boolean(),
          :supportIphone => boolean()
        }

  field(:bundleIdentifier)
  field(:itunesAppId)
  field(:kind)
  field(:preferredForIpad)
  field(:preferredForIphone)
  field(:supportIpad)
  field(:supportIphone)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.InstanceIosDetails do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.InstanceIosDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.InstanceIosDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
