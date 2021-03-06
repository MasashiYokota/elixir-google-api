# Copyright 2019 Google Inc.
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

defmodule GoogleApis.Generator.ElixirGenerator.Endpoint do
  @moduledoc """
  An endpoint represents a remote URL + parameters that represents an API call
  a user can make.
  """

  alias GoogleApis.Generator.ElixirGenerator.{Parameter, ResourceContext, Type}
  alias GoogleApi.Discovery.V1.Model.RestMethod

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :typespec => String.t(),
          :required_parameters => list(Parameter.t()),
          :optional_parameters => list(Parameter.t()),
          :path_parameters => list(Parameter.t()),
          :typespec => String.t(),
          :return => Type.t(),
          :method => String.t(),
          :is_download => boolean(),
          :path => String.t()
        }

  defstruct [
    :name,
    :description,
    :required_parameters,
    :optional_parameters,
    :path_parameters,
    :typespec,
    :return,
    :method,
    :is_download,
    :path
  ]

  @spec from_discovery_method(RestMethod.t(), ResourceContext.t()) :: list(t)
  def from_discovery_method(
        %{
          supportsMediaUpload: true,
          mediaUpload: %{protocols: %{resumable: resumable, simple: simple}}
        } = method,
        context
      ) do
    []
    |> prepend_basic_endpoint(method, context)
    |> prepend_iodata_upload_endpoint(method, simple, context)
    |> prepend_resumable_upload_endpoint(method, resumable, context)
    |> prepend_simple_upload_endpoint(method, simple, context)
    |> Enum.reverse()
  end

  def from_discovery_method(method, context) do
    [] |> prepend_basic_endpoint(method, context)
  end

  defp prepend_basic_endpoint(endpoints, method, context) do
    {required_parameters, optional_parameters} = Parameter.from_discovery_method(method, context)

    name = method_name_to_endpoint_name(method.id)
    ret = return_type(method, context)

    [%__MODULE__{
      name: name,
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: "/" <> ResourceContext.path(context, method.path),
      required_parameters: required_parameters,
      optional_parameters: optional_parameters,
      path_parameters: Enum.filter(required_parameters, fn p -> p.location == "path" end),
      typespec: typespec(name, required_parameters, ret),
      is_download: method.supportsMediaDownload,
      return: ret
    } | endpoints]
  end

  defp prepend_iodata_upload_endpoint(endpoints, _method, nil, _context), do: endpoints

  defp prepend_iodata_upload_endpoint(endpoints, method, simple_protocol, context) do
    {required_parameters, optional_parameters} = Parameter.from_discovery_method(method, context)

    # simple upload should not have body param
    optional_parameters =
      Enum.filter(optional_parameters, fn parameter -> parameter.location != "body" end)

    name = method_name_to_endpoint_name(method.id <> "_iodata")
    ret = return_type(method, context)
    metadata_type = Type.from_schema(method.request, context)

    required_parameters =
      required_parameters ++
        [
          %Parameter{
            name: "uploadType",
            variable_name: "upload_type",
            description: "Upload type. Must be \"multipart\".",
            type: %Type{
              name: "string",
              typespec: "String.t"
            },
            location: "query"
          },
          %Parameter{
            name: "metadata",
            variable_name: "metadata",
            description: "#{metadata_type.name} metadata",
            type: metadata_type,
            location: "body"
          },
          %Parameter{
            name: "data",
            variable_name: "data",
            description: "Content to upload, as a string or iolist",
            type: %Type{
              name: "iodata",
              typespec: "iodata"
            },
            location: "body"
          }
        ]

    [%__MODULE__{
      name: name,
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: simple_protocol.path,
      required_parameters: required_parameters,
      optional_parameters: optional_parameters,
      path_parameters: Enum.filter(required_parameters, fn p -> p.location == "path" end),
      typespec: typespec(name, required_parameters, ret),
      return: ret
    } | endpoints]
  end

  defp prepend_simple_upload_endpoint(endpoints, _method, nil, _context), do: endpoints

  defp prepend_simple_upload_endpoint(endpoints, method, simple_protocol, context) do
    {required_parameters, optional_parameters} = Parameter.from_discovery_method(method, context)

    # simple upload should not have body param
    optional_parameters =
      Enum.filter(optional_parameters, fn parameter -> parameter.location != "body" end)

    name = method_name_to_endpoint_name(method.id <> "_simple")
    ret = return_type(method, context)
    metadata_type = Type.from_schema(method.request, context)

    required_parameters =
      required_parameters ++
        [
          %Parameter{
            name: "uploadType",
            variable_name: "upload_type",
            description: "Upload type. Must be \"multipart\".",
            type: %Type{
              name: "string",
              typespec: "String.t"
            },
            location: "query"
          },
          %Parameter{
            name: "metadata",
            variable_name: "metadata",
            description: "#{metadata_type.name} metadata",
            type: metadata_type,
            location: "body"
          },
          %Parameter{
            name: "data",
            variable_name: "data",
            description: "Path to file containing content to upload",
            type: %Type{
              name: "string",
              typespec: "String.t"
            },
            location: "file"
          }
        ]

    [%__MODULE__{
      name: name,
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: simple_protocol.path,
      required_parameters: required_parameters,
      optional_parameters: optional_parameters,
      path_parameters: Enum.filter(required_parameters, fn p -> p.location == "path" end),
      typespec: typespec(name, required_parameters, ret),
      return: ret
    } | endpoints]
  end

  defp prepend_resumable_upload_endpoint(endpoints, _method, nil, _context), do: endpoints

  defp prepend_resumable_upload_endpoint(endpoints, method, resumable_protocol, context) do
    {required_parameters, optional_parameters} = Parameter.from_discovery_method(method, context)

    name = method_name_to_endpoint_name(method.id <> "_resumable")
    ret = Type.empty()

    required_parameters =
      required_parameters ++
        [
          %Parameter{
            name: "uploadType",
            variable_name: "upload_type",
            description: "Upload type. Must be \"resumable\".",
            type: %Type{
              name: "string",
              typespec: "String.t"
            },
            location: "query"
          }
        ]

    [%__MODULE__{
      name: name,
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: resumable_protocol.path,
      required_parameters: required_parameters,
      optional_parameters: optional_parameters,
      path_parameters: Enum.filter(required_parameters, fn p -> p.location == "path" end),
      typespec: typespec(name, required_parameters, ret),
      return: ret
    } | endpoints]
  end

  defp typespec(name, params, ret) do
    param_specs = Enum.map_join(params, ", ", fn param -> param.type.typespec end)

    param_specs =
      case param_specs do
        "" -> param_specs
        _ -> ", " <> param_specs
      end

    "#{name}(Tesla.Env.client()#{param_specs}, keyword(), keyword()) :: {:ok, #{ret.typespec}} | {:ok, Tesla.Env.t()} | {:error, any()}"
  end

  defp return_type(%{response: nil}, _context), do: Type.empty()

  defp return_type(%{response: schema}, context) do
    Type.from_schema(schema, context)
  end

  defp method_name_to_endpoint_name(method_name) do
    method_name
    |> String.replace(~r{[\.-]}, "_")
    |> Macro.underscore()
  end
end
