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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1PolicyTag do
  @moduledoc """
  Denotes one policy tag in a taxonomy (e.g. ssn). Policy Tags can be defined
  in a hierarchy. For example, consider the following hierachy:
                Geolocation
                     |
    ------------------------------------
    |                |                 |
  LatLong          City              ZipCode
  PolicyTag "Geolocation" contains three child policy tags: "LatLong",
  "City", and "ZipCode".

  ## Attributes

  *   `childPolicyTags` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Resource names of child policy tags of this policy tag.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of this policy tag. It must: contain only unicode characters,
      tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
      long when encoded in UTF-8. If not set, defaults to an empty description.
      If not set, defaults to an empty description.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. User defined name of this policy tag. It must: be unique within the parent
      taxonomy; contain only unicode letters, numbers, underscores, dashes and
      spaces; not start or end with spaces; and be at most 200 bytes long when
      encoded in UTF-8.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of this policy tag, whose format is:
      "projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{id}".
  *   `parentPolicyTag` (*type:* `String.t`, *default:* `nil`) - Resource name of this policy tag's parent policy tag (e.g. for the
      "LatLong" policy tag in the example above, this field contains the
      resource name of the "Geolocation" policy tag). If empty, it means this
      policy tag is a top level policy tag (e.g. this field is empty for the
      "Geolocation" policy tag in the example above). If not set, defaults to an
      empty string.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childPolicyTags => list(String.t()),
          :description => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :parentPolicyTag => String.t()
        }

  field(:childPolicyTags, type: :list)
  field(:description)
  field(:displayName)
  field(:name)
  field(:parentPolicyTag)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1PolicyTag do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1PolicyTag.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1PolicyTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end