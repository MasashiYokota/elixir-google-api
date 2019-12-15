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

defmodule GoogleApi.ServiceUsage.V1.Model.GoogleApiService do
  @moduledoc """
  `Service` is the root object of Google service configuration schema. It
  describes basic information about a service, such as the name and the
  title, and delegates other aspects to sub-sections. Each sub-section is
  either a proto message or a repeated proto message that configures a
  specific aspect, such as auth. See each proto message definition for details.

  Example:

      type: google.api.Service
      config_version: 3
      name: calendar.googleapis.com
      title: Google Calendar API
      apis:
      - name: google.calendar.v3.Calendar
      authentication:
        providers:
        - id: google_calendar_auth
          jwks_uri: https://www.googleapis.com/oauth2/v1/certs
          issuer: https://securetoken.google.com
        rules:
        - selector: "*"
          requirements:
            provider_id: google_calendar_auth

  ## Attributes

  *   `apis` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Api.t)`, *default:* `nil`) - A list of API interfaces exported by this service. Only the `name` field
      of the google.protobuf.Api needs to be provided by the configuration
      author, as the remaining fields will be derived from the IDL during the
      normalization process. It is an error to specify an API interface here
      which cannot be resolved against the associated IDL files.
  *   `authentication` (*type:* `GoogleApi.ServiceUsage.V1.Model.Authentication.t`, *default:* `nil`) - Auth configuration.
  *   `backend` (*type:* `GoogleApi.ServiceUsage.V1.Model.Backend.t`, *default:* `nil`) - API backend configuration.
  *   `billing` (*type:* `GoogleApi.ServiceUsage.V1.Model.Billing.t`, *default:* `nil`) - Billing configuration.
  *   `configVersion` (*type:* `integer()`, *default:* `nil`) - The semantic version of the service configuration. The config version
      affects the interpretation of the service configuration. For example,
      certain features are enabled by default for certain config versions.
      The latest config version is `3`.
  *   `context` (*type:* `GoogleApi.ServiceUsage.V1.Model.Context.t`, *default:* `nil`) - Context configuration.
  *   `control` (*type:* `GoogleApi.ServiceUsage.V1.Model.Control.t`, *default:* `nil`) - Configuration for the service control plane.
  *   `customError` (*type:* `GoogleApi.ServiceUsage.V1.Model.CustomError.t`, *default:* `nil`) - Custom error configuration.
  *   `documentation` (*type:* `GoogleApi.ServiceUsage.V1.Model.Documentation.t`, *default:* `nil`) - Additional API documentation.
  *   `endpoints` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Endpoint.t)`, *default:* `nil`) - Configuration for network endpoints.  If this is empty, then an endpoint
      with the same name as the service is automatically generated to service all
      defined APIs.
  *   `enums` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Enum.t)`, *default:* `nil`) - A list of all enum types included in this API service.  Enums
      referenced directly or indirectly by the `apis` are automatically
      included.  Enums which are not referenced but shall be included
      should be listed here by name. Example:

          enums:
          - name: google.someapi.v1.SomeEnum
  *   `http` (*type:* `GoogleApi.ServiceUsage.V1.Model.Http.t`, *default:* `nil`) - HTTP configuration.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A unique ID for a specific instance of this message, typically assigned
      by the client for tracking purpose. Must be no longer than 63 characters
      and only lower case letters, digits, '.', '_' and '-' are allowed. If
      empty, the server may choose to generate one instead.
  *   `logging` (*type:* `GoogleApi.ServiceUsage.V1.Model.Logging.t`, *default:* `nil`) - Logging configuration.
  *   `logs` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.LogDescriptor.t)`, *default:* `nil`) - Defines the logs used by this service.
  *   `metrics` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.MetricDescriptor.t)`, *default:* `nil`) - Defines the metrics used by this service.
  *   `monitoredResources` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.MonitoredResourceDescriptor.t)`, *default:* `nil`) - Defines the monitored resources used by this service. This is required
      by the Service.monitoring and Service.logging configurations.
  *   `monitoring` (*type:* `GoogleApi.ServiceUsage.V1.Model.Monitoring.t`, *default:* `nil`) - Monitoring configuration.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The service name, which is a DNS-like logical identifier for the
      service, such as `calendar.googleapis.com`. The service name
      typically goes through DNS verification to make sure the owner
      of the service also owns the DNS name.
  *   `producerProjectId` (*type:* `String.t`, *default:* `nil`) - The Google project that owns this service.
  *   `quota` (*type:* `GoogleApi.ServiceUsage.V1.Model.Quota.t`, *default:* `nil`) - Quota configuration.
  *   `sourceInfo` (*type:* `GoogleApi.ServiceUsage.V1.Model.SourceInfo.t`, *default:* `nil`) - Output only. The source information for this configuration if available.
  *   `systemParameters` (*type:* `GoogleApi.ServiceUsage.V1.Model.SystemParameters.t`, *default:* `nil`) - System parameter configuration.
  *   `systemTypes` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Type.t)`, *default:* `nil`) - A list of all proto message types included in this API service.
      It serves similar purpose as [google.api.Service.types], except that
      these types are not needed by user-defined APIs. Therefore, they will not
      show up in the generated discovery doc. This field should only be used
      to define system APIs in ESF.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The product title for this service.
  *   `types` (*type:* `list(GoogleApi.ServiceUsage.V1.Model.Type.t)`, *default:* `nil`) - A list of all proto message types included in this API service.
      Types referenced directly or indirectly by the `apis` are
      automatically included.  Messages which are not referenced but
      shall be included, such as types used by the `google.protobuf.Any` type,
      should be listed here by name. Example:

          types:
          - name: google.protobuf.Int32
  *   `usage` (*type:* `GoogleApi.ServiceUsage.V1.Model.Usage.t`, *default:* `nil`) - Configuration controlling usage of this service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apis => list(GoogleApi.ServiceUsage.V1.Model.Api.t()),
          :authentication => GoogleApi.ServiceUsage.V1.Model.Authentication.t(),
          :backend => GoogleApi.ServiceUsage.V1.Model.Backend.t(),
          :billing => GoogleApi.ServiceUsage.V1.Model.Billing.t(),
          :configVersion => integer(),
          :context => GoogleApi.ServiceUsage.V1.Model.Context.t(),
          :control => GoogleApi.ServiceUsage.V1.Model.Control.t(),
          :customError => GoogleApi.ServiceUsage.V1.Model.CustomError.t(),
          :documentation => GoogleApi.ServiceUsage.V1.Model.Documentation.t(),
          :endpoints => list(GoogleApi.ServiceUsage.V1.Model.Endpoint.t()),
          :enums => list(GoogleApi.ServiceUsage.V1.Model.Enum.t()),
          :http => GoogleApi.ServiceUsage.V1.Model.Http.t(),
          :id => String.t(),
          :logging => GoogleApi.ServiceUsage.V1.Model.Logging.t(),
          :logs => list(GoogleApi.ServiceUsage.V1.Model.LogDescriptor.t()),
          :metrics => list(GoogleApi.ServiceUsage.V1.Model.MetricDescriptor.t()),
          :monitoredResources =>
            list(GoogleApi.ServiceUsage.V1.Model.MonitoredResourceDescriptor.t()),
          :monitoring => GoogleApi.ServiceUsage.V1.Model.Monitoring.t(),
          :name => String.t(),
          :producerProjectId => String.t(),
          :quota => GoogleApi.ServiceUsage.V1.Model.Quota.t(),
          :sourceInfo => GoogleApi.ServiceUsage.V1.Model.SourceInfo.t(),
          :systemParameters => GoogleApi.ServiceUsage.V1.Model.SystemParameters.t(),
          :systemTypes => list(GoogleApi.ServiceUsage.V1.Model.Type.t()),
          :title => String.t(),
          :types => list(GoogleApi.ServiceUsage.V1.Model.Type.t()),
          :usage => GoogleApi.ServiceUsage.V1.Model.Usage.t()
        }

  field(:apis, as: GoogleApi.ServiceUsage.V1.Model.Api, type: :list)
  field(:authentication, as: GoogleApi.ServiceUsage.V1.Model.Authentication)
  field(:backend, as: GoogleApi.ServiceUsage.V1.Model.Backend)
  field(:billing, as: GoogleApi.ServiceUsage.V1.Model.Billing)
  field(:configVersion)
  field(:context, as: GoogleApi.ServiceUsage.V1.Model.Context)
  field(:control, as: GoogleApi.ServiceUsage.V1.Model.Control)
  field(:customError, as: GoogleApi.ServiceUsage.V1.Model.CustomError)
  field(:documentation, as: GoogleApi.ServiceUsage.V1.Model.Documentation)
  field(:endpoints, as: GoogleApi.ServiceUsage.V1.Model.Endpoint, type: :list)
  field(:enums, as: GoogleApi.ServiceUsage.V1.Model.Enum, type: :list)
  field(:http, as: GoogleApi.ServiceUsage.V1.Model.Http)
  field(:id)
  field(:logging, as: GoogleApi.ServiceUsage.V1.Model.Logging)
  field(:logs, as: GoogleApi.ServiceUsage.V1.Model.LogDescriptor, type: :list)
  field(:metrics, as: GoogleApi.ServiceUsage.V1.Model.MetricDescriptor, type: :list)

  field(:monitoredResources,
    as: GoogleApi.ServiceUsage.V1.Model.MonitoredResourceDescriptor,
    type: :list
  )

  field(:monitoring, as: GoogleApi.ServiceUsage.V1.Model.Monitoring)
  field(:name)
  field(:producerProjectId)
  field(:quota, as: GoogleApi.ServiceUsage.V1.Model.Quota)
  field(:sourceInfo, as: GoogleApi.ServiceUsage.V1.Model.SourceInfo)
  field(:systemParameters, as: GoogleApi.ServiceUsage.V1.Model.SystemParameters)
  field(:systemTypes, as: GoogleApi.ServiceUsage.V1.Model.Type, type: :list)
  field(:title)
  field(:types, as: GoogleApi.ServiceUsage.V1.Model.Type, type: :list)
  field(:usage, as: GoogleApi.ServiceUsage.V1.Model.Usage)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.GoogleApiService do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.GoogleApiService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.GoogleApiService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end