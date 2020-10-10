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

defmodule GoogleApi.LifeSciences.V2beta.Model.Volume do
  @moduledoc """
  Carries information about storage that can be attached to a VM.

  ## Attributes

  *   `existingDisk` (*type:* `GoogleApi.LifeSciences.V2beta.Model.ExistingDisk.t`, *default:* `nil`) - Configuration for a existing disk.
  *   `persistentDisk` (*type:* `GoogleApi.LifeSciences.V2beta.Model.PersistentDisk.t`, *default:* `nil`) - Configuration for a persistent disk.
  *   `volume` (*type:* `String.t`, *default:* `nil`) - A user-supplied name for the volume. Used when mounting the volume into `Actions`. The name must contain only upper and lowercase alphanumeric characters and hyphens and cannot start with a hyphen.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :existingDisk => GoogleApi.LifeSciences.V2beta.Model.ExistingDisk.t(),
          :persistentDisk => GoogleApi.LifeSciences.V2beta.Model.PersistentDisk.t(),
          :volume => String.t()
        }

  field(:existingDisk, as: GoogleApi.LifeSciences.V2beta.Model.ExistingDisk)
  field(:persistentDisk, as: GoogleApi.LifeSciences.V2beta.Model.PersistentDisk)
  field(:volume)
end

defimpl Poison.Decoder, for: GoogleApi.LifeSciences.V2beta.Model.Volume do
  def decode(value, options) do
    GoogleApi.LifeSciences.V2beta.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.LifeSciences.V2beta.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
