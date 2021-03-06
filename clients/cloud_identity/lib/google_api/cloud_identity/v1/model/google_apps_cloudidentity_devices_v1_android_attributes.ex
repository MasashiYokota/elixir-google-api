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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes do
  @moduledoc """
  Resource representing the Android specific attributes of a Device.

  ## Attributes

  *   `enabledUnknownSources` (*type:* `boolean()`, *default:* `nil`) - Whether applications from unknown sources can be installed on device.
  *   `ownerProfileAccount` (*type:* `boolean()`, *default:* `nil`) - Whether this account is on an owner/primary profile. For phones, only true for owner profiles. Android 4+ devices can have secondary or restricted user profiles.
  *   `ownershipPrivilege` (*type:* `String.t`, *default:* `nil`) - Ownership privileges on device.
  *   `supportsWorkProfile` (*type:* `boolean()`, *default:* `nil`) - Whether device supports Android work profiles. If false, this service will not block access to corp data even if an administrator turns on the "Enforce Work Profile" policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabledUnknownSources => boolean(),
          :ownerProfileAccount => boolean(),
          :ownershipPrivilege => String.t(),
          :supportsWorkProfile => boolean()
        }

  field(:enabledUnknownSources)
  field(:ownerProfileAccount)
  field(:ownershipPrivilege)
  field(:supportsWorkProfile)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1AndroidAttributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
