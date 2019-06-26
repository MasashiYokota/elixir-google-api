# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.FusionTables.V2.Model.ColumnBaseColumn do
  @moduledoc """
  Identifier of the base column. If present, this column is derived from the specified base column.

  ## Attributes

  *   `columnId` (*type:* `integer()`, *default:* `nil`) - The id of the column in the base table from which this column is derived.
  *   `tableIndex` (*type:* `integer()`, *default:* `nil`) - Offset to the entry in the list of base tables in the table definition.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnId => integer(),
          :tableIndex => integer()
        }

  field(:columnId)
  field(:tableIndex)
end

defimpl Poison.Decoder, for: GoogleApi.FusionTables.V2.Model.ColumnBaseColumn do
  def decode(value, options) do
    GoogleApi.FusionTables.V2.Model.ColumnBaseColumn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FusionTables.V2.Model.ColumnBaseColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
