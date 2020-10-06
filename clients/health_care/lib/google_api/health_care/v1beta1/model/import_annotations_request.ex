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

defmodule GoogleApi.HealthCare.V1beta1.Model.ImportAnnotationsRequest do
  @moduledoc """
  Request to import Annotations. The Annotations to be imported must have client-supplied resource names which indicate the annotation resource. The import operation is not atomic. If a failure occurs, any annotations already imported are not removed.

  ## Attributes

  *   `gcsSource` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsSource =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource.t()
        }

  field(:gcsSource,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ImportAnnotationsRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ImportAnnotationsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ImportAnnotationsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
