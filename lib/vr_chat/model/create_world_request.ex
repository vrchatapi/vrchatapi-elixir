# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.CreateWorldRequest do
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
    :id,
    :imageUrl,
    :name,
    :platform,
    :releaseStatus,
    :tags,
    :unityPackageUrl,
    :unityVersion
  ]

  @type t :: %__MODULE__{
    :assetUrl => String.t,
    :assetVersion => integer() | nil,
    :authorId => String.t | nil,
    :authorName => String.t | nil,
    :capacity => integer() | nil,
    :description => String.t | nil,
    :id => String.t | nil,
    :imageUrl => String.t,
    :name => String.t,
    :platform => String.t | nil,
    :releaseStatus => VRChat.Model.ReleaseStatus.t | nil,
    :tags => [VRChat.Model.String.t] | nil,
    :unityPackageUrl => String.t | nil,
    :unityVersion => String.t | nil
  }
end

defimpl Poison.Decoder, for: VRChat.Model.CreateWorldRequest do
  import VRChat.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:releaseStatus, :struct, VRChat.Model.ReleaseStatus, options)
  end
end

