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

defmodule GoogleApi.NetworkManagement.V1.Model.ConnectivityTest do
  @moduledoc """
  A Connectivity Test for a network reachability analysis.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the test was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  *   `destination` (*type:* `GoogleApi.NetworkManagement.V1.Model.Endpoint.t`, *default:* `nil`) - Required. Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of a Connectivity Test.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Resource labels to represent user-provided metadata.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - IP Protocol of the test. When not provided, "TCP" is assumed.
  *   `reachabilityDetails` (*type:* `GoogleApi.NetworkManagement.V1.Model.ReachabilityDetails.t`, *default:* `nil`) - Output only. The reachability details of this test from the latest run. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  *   `relatedProjects` (*type:* `list(String.t)`, *default:* `nil`) - Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  *   `source` (*type:* `GoogleApi.NetworkManagement.V1.Model.Endpoint.t`, *default:* `nil`) - Required. Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the test's configuration was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :description => String.t(),
          :destination => GoogleApi.NetworkManagement.V1.Model.Endpoint.t(),
          :displayName => String.t(),
          :labels => map(),
          :name => String.t(),
          :protocol => String.t(),
          :reachabilityDetails => GoogleApi.NetworkManagement.V1.Model.ReachabilityDetails.t(),
          :relatedProjects => list(String.t()),
          :source => GoogleApi.NetworkManagement.V1.Model.Endpoint.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:destination, as: GoogleApi.NetworkManagement.V1.Model.Endpoint)
  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:protocol)
  field(:reachabilityDetails, as: GoogleApi.NetworkManagement.V1.Model.ReachabilityDetails)
  field(:relatedProjects, type: :list)
  field(:source, as: GoogleApi.NetworkManagement.V1.Model.Endpoint)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.ConnectivityTest do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.ConnectivityTest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.ConnectivityTest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
