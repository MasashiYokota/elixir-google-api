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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.OperationPerDevice do
  @moduledoc """
  A task for each device in the operation. Corresponds to each device change in the request.

  ## Attributes

  *   `claim` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim.t`, *default:* `nil`) - A copy of the original device-claim request received by the server.
  *   `result` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.PerDeviceStatusInBatch.t`, *default:* `nil`) - The processing result for each device.
  *   `unclaim` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim.t`, *default:* `nil`) - A copy of the original device-unclaim request received by the server.
  *   `updateMetadata` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments.t`, *default:* `nil`) - A copy of the original metadata-update request received by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :claim => GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim.t(),
          :result => GoogleApi.AndroidDeviceProvisioning.V1.Model.PerDeviceStatusInBatch.t(),
          :unclaim => GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim.t(),
          :updateMetadata =>
            GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments.t()
        }

  field(:claim, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim)
  field(:result, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.PerDeviceStatusInBatch)
  field(:unclaim, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim)
  field(:updateMetadata, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.OperationPerDevice do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.OperationPerDevice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.OperationPerDevice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
