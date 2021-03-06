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

defmodule GoogleApi.AccessApproval.V1.Model.AccessLocations do
  @moduledoc """
  Home office and physical location of the principal.

  ## Attributes

  *   `principalOfficeCountry` (*type:* `String.t`, *default:* `nil`) - The "home office" location of the principal. A two-letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location
  *   `principalPhysicalLocationCountry` (*type:* `String.t`, *default:* `nil`) - Physical location of the principal at the time of the access. A two-letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :principalOfficeCountry => String.t(),
          :principalPhysicalLocationCountry => String.t()
        }

  field(:principalOfficeCountry)
  field(:principalPhysicalLocationCountry)
end

defimpl Poison.Decoder, for: GoogleApi.AccessApproval.V1.Model.AccessLocations do
  def decode(value, options) do
    GoogleApi.AccessApproval.V1.Model.AccessLocations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessApproval.V1.Model.AccessLocations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
