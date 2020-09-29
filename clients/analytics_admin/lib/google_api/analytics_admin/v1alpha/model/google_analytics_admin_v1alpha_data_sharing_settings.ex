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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  @moduledoc """
  A resource message representing data sharing settings of a Google Analytics account.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name. Format: accounts/{account}/dataSharingSettings Example: "accounts/1000/dataSharingSettings"
  *   `sharingWithGoogleAnySalesEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows any of Google sales to access the data in order to suggest configuration changes to improve results.
  *   `sharingWithGoogleAssignedSalesEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google sales teams that are assigned to the customer to access the data in order to suggest configuration changes to improve results. Sales team restrictions still apply when enabled.
  *   `sharingWithGoogleProductsEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google to use the data to improve other Google products or services.
  *   `sharingWithGoogleSupportEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google support to access the data in order to help troubleshoot issues.
  *   `sharingWithOthersEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows Google to share the data anonymously in aggregate form with others.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :sharingWithGoogleAnySalesEnabled => boolean(),
          :sharingWithGoogleAssignedSalesEnabled => boolean(),
          :sharingWithGoogleProductsEnabled => boolean(),
          :sharingWithGoogleSupportEnabled => boolean(),
          :sharingWithOthersEnabled => boolean()
        }

  field(:name)
  field(:sharingWithGoogleAnySalesEnabled)
  field(:sharingWithGoogleAssignedSalesEnabled)
  field(:sharingWithGoogleProductsEnabled)
  field(:sharingWithGoogleSupportEnabled)
  field(:sharingWithOthersEnabled)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaDataSharingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
