# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.UpdateWorldRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :assetUrl,
    :assetVersion,
    :authorId,
    :authorName,
    :capacity,
    :description,
    :imageUrl,
    :name,
    :platform,
    :releaseStatus,
    :tags,
    :unityPackageUrl,
    :unityVersion
  ]

  @type t :: %__MODULE__{
          :assetUrl => String.t() | nil,
          :assetVersion => String.t() | nil,
          :authorId => String.t() | nil,
          :authorName => String.t() | nil,
          :capacity => integer() | nil,
          :description => String.t() | nil,
          :imageUrl => String.t() | nil,
          :name => String.t() | nil,
          :platform => String.t() | nil,
          :releaseStatus => VRChat.Model.ReleaseStatus.t() | nil,
          :tags => [String.t()] | nil,
          :unityPackageUrl => String.t() | nil,
          :unityVersion => String.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.UpdateWorldRequest do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:releaseStatus, :struct, VRChat.Model.ReleaseStatus, options)
  end
end
