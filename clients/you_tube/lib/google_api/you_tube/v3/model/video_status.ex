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

defmodule GoogleApi.YouTube.V3.Model.VideoStatus do
  @moduledoc """
  Basic details about a video category, such as its localized title.

  ## Attributes

  *   `embeddable` (*type:* `boolean()`, *default:* `nil`) - This value indicates if the video can be embedded on another website.
  *   `failureReason` (*type:* `String.t`, *default:* `nil`) - This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.
  *   `license` (*type:* `String.t`, *default:* `nil`) - The video's license.
  *   `madeForKids` (*type:* `boolean()`, *default:* `nil`) - 
  *   `privacyStatus` (*type:* `String.t`, *default:* `nil`) - The video's privacy status.
  *   `publicStatsViewable` (*type:* `boolean()`, *default:* `nil`) - This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled.
  *   `publishAt` (*type:* `DateTime.t`, *default:* `nil`) - The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
  *   `rejectionReason` (*type:* `String.t`, *default:* `nil`) - This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.
  *   `selfDeclaredMadeForKids` (*type:* `boolean()`, *default:* `nil`) - Allows clients to set the Crosswalk self_declared state for a Video. This maps to VAPI.Video.creator_flags.is_crosswalk_self_declared() and VAPI.Video.creator_flags.is_not_crosswalk_self_declared().
  *   `uploadStatus` (*type:* `String.t`, *default:* `nil`) - The status of the uploaded video.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :embeddable => boolean(),
          :failureReason => String.t(),
          :license => String.t(),
          :madeForKids => boolean(),
          :privacyStatus => String.t(),
          :publicStatsViewable => boolean(),
          :publishAt => DateTime.t(),
          :rejectionReason => String.t(),
          :selfDeclaredMadeForKids => boolean(),
          :uploadStatus => String.t()
        }

  field(:embeddable)
  field(:failureReason)
  field(:license)
  field(:madeForKids)
  field(:privacyStatus)
  field(:publicStatsViewable)
  field(:publishAt, as: DateTime)
  field(:rejectionReason)
  field(:selfDeclaredMadeForKids)
  field(:uploadStatus)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
