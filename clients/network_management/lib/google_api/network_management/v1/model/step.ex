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

defmodule GoogleApi.NetworkManagement.V1.Model.Step do
  @moduledoc """
  A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.

  ## Attributes

  *   `abort` (*type:* `GoogleApi.NetworkManagement.V1.Model.AbortInfo.t`, *default:* `nil`) - Display info of the final state "abort" and reason.
  *   `causesDrop` (*type:* `boolean()`, *default:* `nil`) - This is a step that leads to the final state Drop.
  *   `deliver` (*type:* `GoogleApi.NetworkManagement.V1.Model.DeliverInfo.t`, *default:* `nil`) - Display info of the final state "deliver" and reason.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the step. Usually this is a summary of the state.
  *   `drop` (*type:* `GoogleApi.NetworkManagement.V1.Model.DropInfo.t`, *default:* `nil`) - Display info of the final state "drop" and reason.
  *   `endpoint` (*type:* `GoogleApi.NetworkManagement.V1.Model.EndpointInfo.t`, *default:* `nil`) - Display info of the source and destination under analysis. The endpiont info in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.
  *   `firewall` (*type:* `GoogleApi.NetworkManagement.V1.Model.FirewallInfo.t`, *default:* `nil`) - Display info of a Compute Engine firewall rule.
  *   `forward` (*type:* `GoogleApi.NetworkManagement.V1.Model.ForwardInfo.t`, *default:* `nil`) - Display info of the final state "forward" and reason.
  *   `forwardingRule` (*type:* `GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo.t`, *default:* `nil`) - Display info of a Compute Engine forwarding rule.
  *   `instance` (*type:* `GoogleApi.NetworkManagement.V1.Model.InstanceInfo.t`, *default:* `nil`) - Display info of a Compute Engine instance.
  *   `loadBalancer` (*type:* `GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo.t`, *default:* `nil`) - Display info of the load balancers.
  *   `network` (*type:* `GoogleApi.NetworkManagement.V1.Model.NetworkInfo.t`, *default:* `nil`) - Display info of a GCP network.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID that contains the configuration this step is validating.
  *   `route` (*type:* `GoogleApi.NetworkManagement.V1.Model.RouteInfo.t`, *default:* `nil`) - Display info of a Compute Engine route.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Each step is in one of the pre-defined states.
  *   `vpnGateway` (*type:* `GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo.t`, *default:* `nil`) - Display info of a Compute Engine VPN gateway.
  *   `vpnTunnel` (*type:* `GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo.t`, *default:* `nil`) - Display info of a Compute Engine VPN tunnel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abort => GoogleApi.NetworkManagement.V1.Model.AbortInfo.t(),
          :causesDrop => boolean(),
          :deliver => GoogleApi.NetworkManagement.V1.Model.DeliverInfo.t(),
          :description => String.t(),
          :drop => GoogleApi.NetworkManagement.V1.Model.DropInfo.t(),
          :endpoint => GoogleApi.NetworkManagement.V1.Model.EndpointInfo.t(),
          :firewall => GoogleApi.NetworkManagement.V1.Model.FirewallInfo.t(),
          :forward => GoogleApi.NetworkManagement.V1.Model.ForwardInfo.t(),
          :forwardingRule => GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo.t(),
          :instance => GoogleApi.NetworkManagement.V1.Model.InstanceInfo.t(),
          :loadBalancer => GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo.t(),
          :network => GoogleApi.NetworkManagement.V1.Model.NetworkInfo.t(),
          :projectId => String.t(),
          :route => GoogleApi.NetworkManagement.V1.Model.RouteInfo.t(),
          :state => String.t(),
          :vpnGateway => GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo.t(),
          :vpnTunnel => GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo.t()
        }

  field(:abort, as: GoogleApi.NetworkManagement.V1.Model.AbortInfo)
  field(:causesDrop)
  field(:deliver, as: GoogleApi.NetworkManagement.V1.Model.DeliverInfo)
  field(:description)
  field(:drop, as: GoogleApi.NetworkManagement.V1.Model.DropInfo)
  field(:endpoint, as: GoogleApi.NetworkManagement.V1.Model.EndpointInfo)
  field(:firewall, as: GoogleApi.NetworkManagement.V1.Model.FirewallInfo)
  field(:forward, as: GoogleApi.NetworkManagement.V1.Model.ForwardInfo)
  field(:forwardingRule, as: GoogleApi.NetworkManagement.V1.Model.ForwardingRuleInfo)
  field(:instance, as: GoogleApi.NetworkManagement.V1.Model.InstanceInfo)
  field(:loadBalancer, as: GoogleApi.NetworkManagement.V1.Model.LoadBalancerInfo)
  field(:network, as: GoogleApi.NetworkManagement.V1.Model.NetworkInfo)
  field(:projectId)
  field(:route, as: GoogleApi.NetworkManagement.V1.Model.RouteInfo)
  field(:state)
  field(:vpnGateway, as: GoogleApi.NetworkManagement.V1.Model.VpnGatewayInfo)
  field(:vpnTunnel, as: GoogleApi.NetworkManagement.V1.Model.VpnTunnelInfo)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.Step do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.Step.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.Step do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
