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

defmodule GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest do
  @moduledoc """
  Updates the SectionStyle.

  ## Attributes

  *   `fields` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `section_style` is implied and must not be specified. A single `"*"` can be used as short-hand for listing every field. For example to update the left margin, set `fields` to `"margin_left"`.
  *   `range` (*type:* `GoogleApi.Docs.V1.Model.Range.t`, *default:* `nil`) - The range overlapping the sections to style. Because section breaks can only be inserted inside the body, the segment ID field must be empty.
  *   `sectionStyle` (*type:* `GoogleApi.Docs.V1.Model.SectionStyle.t`, *default:* `nil`) - The styles to be set on the section. Certain section style changes may cause other changes in order to mirror the behavior of the Docs editor. See the documentation of SectionStyle for more information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t(),
          :range => GoogleApi.Docs.V1.Model.Range.t(),
          :sectionStyle => GoogleApi.Docs.V1.Model.SectionStyle.t()
        }

  field(:fields)
  field(:range, as: GoogleApi.Docs.V1.Model.Range)
  field(:sectionStyle, as: GoogleApi.Docs.V1.Model.SectionStyle)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.UpdateSectionStyleRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
