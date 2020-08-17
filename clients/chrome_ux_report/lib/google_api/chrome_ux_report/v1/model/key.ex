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

defmodule GoogleApi.ChromeUXReport.V1.Model.Key do
  @moduledoc """
  Key defines all the dimensions that identify this record as unique.

  ## Attributes

  *   `effectiveConnectionType` (*type:* `String.t`, *default:* `nil`) - The effective connection type is the general connection class that all users experienced for this record. This field uses the values ["offline", "slow-2G", "2G", "3G", "4G"] as specified in: https://wicg.github.io/netinfo/#effective-connection-types If the effective connection type is unspecified, then aggregated data over all effective connection types will be returned.
  *   `formFactor` (*type:* `String.t`, *default:* `nil`) - The form factor is the device class that all users used to access the site for this record. If the form factor is unspecified, then aggregated data over all form factors will be returned.
  *   `origin` (*type:* `String.t`, *default:* `nil`) - Origin specifies the origin that this record is for. Note: When specifying an origin, data for loads under this origin over all pages are aggregated into origin level user experience data.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Url specifies a specific url that this record is for. Note: When specifying a "url" only data for that specific url will be aggregated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :effectiveConnectionType => String.t(),
          :formFactor => String.t(),
          :origin => String.t(),
          :url => String.t()
        }

  field(:effectiveConnectionType)
  field(:formFactor)
  field(:origin)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ChromeUXReport.V1.Model.Key do
  def decode(value, options) do
    GoogleApi.ChromeUXReport.V1.Model.Key.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromeUXReport.V1.Model.Key do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
