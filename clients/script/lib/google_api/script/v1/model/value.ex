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

defmodule GoogleApi.Script.V1.Model.Value do
  @moduledoc """
  `Value` represents a dynamically typed value which is the outcome of an executed script.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Represents a boolean value.
  *   `bytesValue` (*type:* `String.t`, *default:* `nil`) - Represents raw byte values.
  *   `dateValue` (*type:* `String.t`, *default:* `nil`) - Represents a date in ms since the epoch.
  *   `listValue` (*type:* `GoogleApi.Script.V1.Model.ListValue.t`, *default:* `nil`) - Represents a repeated `Value`.
  *   `nullValue` (*type:* `String.t`, *default:* `nil`) - Represents a null value.
  *   `numberValue` (*type:* `float()`, *default:* `nil`) - Represents a double value.
  *   `protoValue` (*type:* `map()`, *default:* `nil`) - Represents a structured proto value.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Represents a string value.
  *   `structValue` (*type:* `GoogleApi.Script.V1.Model.Struct.t`, *default:* `nil`) - Represents a structured value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :bytesValue => String.t(),
          :dateValue => String.t(),
          :listValue => GoogleApi.Script.V1.Model.ListValue.t(),
          :nullValue => String.t(),
          :numberValue => float(),
          :protoValue => map(),
          :stringValue => String.t(),
          :structValue => GoogleApi.Script.V1.Model.Struct.t()
        }

  field(:boolValue)
  field(:bytesValue)
  field(:dateValue)
  field(:listValue, as: GoogleApi.Script.V1.Model.ListValue)
  field(:nullValue)
  field(:numberValue)
  field(:protoValue, type: :map)
  field(:stringValue)
  field(:structValue, as: GoogleApi.Script.V1.Model.Struct)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Value do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Value.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Value do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
