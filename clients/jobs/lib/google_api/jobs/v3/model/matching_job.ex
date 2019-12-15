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

defmodule GoogleApi.Jobs.V3.Model.MatchingJob do
  @moduledoc """
  Output only.

  Job entry with metadata inside SearchJobsResponse.

  ## Attributes

  *   `commuteInfo` (*type:* `GoogleApi.Jobs.V3.Model.CommuteInfo.t`, *default:* `nil`) - Commute information which is generated based on specified
       CommuteFilter.
  *   `job` (*type:* `GoogleApi.Jobs.V3.Model.Job.t`, *default:* `nil`) - Job resource that matches the specified SearchJobsRequest.
  *   `jobSummary` (*type:* `String.t`, *default:* `nil`) - A summary of the job with core information that's displayed on the search
      results listing page.
  *   `jobTitleSnippet` (*type:* `String.t`, *default:* `nil`) - Contains snippets of text from the Job.job_title field most
      closely matching a search query's keywords, if available. The matching
      query keywords are enclosed in HTML bold tags.
  *   `searchTextSnippet` (*type:* `String.t`, *default:* `nil`) - Contains snippets of text from the Job.description and similar
      fields that most closely match a search query's keywords, if available.
      All HTML tags in the original fields are stripped when returned in this
      field, and matching query keywords are enclosed in HTML bold tags.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commuteInfo => GoogleApi.Jobs.V3.Model.CommuteInfo.t(),
          :job => GoogleApi.Jobs.V3.Model.Job.t(),
          :jobSummary => String.t(),
          :jobTitleSnippet => String.t(),
          :searchTextSnippet => String.t()
        }

  field(:commuteInfo, as: GoogleApi.Jobs.V3.Model.CommuteInfo)
  field(:job, as: GoogleApi.Jobs.V3.Model.Job)
  field(:jobSummary)
  field(:jobTitleSnippet)
  field(:searchTextSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.MatchingJob do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.MatchingJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.MatchingJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end