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

defmodule GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4CompensationInfoCompensationRange do
  @moduledoc """
  Compensation range.

  ## Attributes

  *   `maxCompensation` (*type:* `GoogleApi.Jobs.V3.Model.Money.t`, *default:* `nil`) - The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  *   `minCompensation` (*type:* `GoogleApi.Jobs.V3.Model.Money.t`, *default:* `nil`) - The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxCompensation => GoogleApi.Jobs.V3.Model.Money.t(),
          :minCompensation => GoogleApi.Jobs.V3.Model.Money.t()
        }

  field(:maxCompensation, as: GoogleApi.Jobs.V3.Model.Money)
  field(:minCompensation, as: GoogleApi.Jobs.V3.Model.Money)
end

defimpl Poison.Decoder,
  for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4CompensationInfoCompensationRange do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4CompensationInfoCompensationRange.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Jobs.V3.Model.GoogleCloudTalentV4CompensationInfoCompensationRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end