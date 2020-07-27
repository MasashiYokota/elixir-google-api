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

defmodule GoogleApi.Run.V1.Model.Revision do
  @moduledoc """
  Revision is an immutable snapshot of code and configuration. A revision references a container image. Revisions are created by updates to a Configuration. See also: https://github.com/knative/serving/blob/master/docs/spec/overview.md#revision

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "serving.knative.dev/v1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this resource, in this case "Revision".
  *   `metadata` (*type:* `GoogleApi.Run.V1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this Revision, including name, namespace, labels, and annotations.
  *   `spec` (*type:* `GoogleApi.Run.V1.Model.RevisionSpec.t`, *default:* `nil`) - Spec holds the desired state of the Revision (from the client).
  *   `status` (*type:* `GoogleApi.Run.V1.Model.RevisionStatus.t`, *default:* `nil`) - Status communicates the observed state of the Revision (from the controller).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :metadata => GoogleApi.Run.V1.Model.ObjectMeta.t(),
          :spec => GoogleApi.Run.V1.Model.RevisionSpec.t(),
          :status => GoogleApi.Run.V1.Model.RevisionStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.Run.V1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.Run.V1.Model.RevisionSpec)
  field(:status, as: GoogleApi.Run.V1.Model.RevisionStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Revision do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Revision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Revision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
