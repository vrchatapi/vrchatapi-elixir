# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.User do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :allowAvatarCopying,
    :bio,
    :bioLinks,
    :currentAvatarImageUrl,
    :currentAvatarThumbnailImageUrl,
    :date_joined,
    :developerType,
    :displayName,
    :friendKey,
    :friendRequestStatus,
    :id,
    :instanceId,
    :isFriend,
    :last_activity,
    :last_login,
    :last_platform,
    :location,
    :note,
    :profilePicOverride,
    :state,
    :status,
    :statusDescription,
    :tags,
    :travelingToInstance,
    :travelingToLocation,
    :travelingToWorld,
    :userIcon,
    :username,
    :worldId
  ]

  @type t :: %__MODULE__{
          :allowAvatarCopying => boolean(),
          :bio => String.t(),
          :bioLinks => [String.t()],
          :currentAvatarImageUrl => String.t(),
          :currentAvatarThumbnailImageUrl => String.t(),
          :date_joined => Date.t(),
          :developerType => VRChat.Model.DeveloperType.t(),
          :displayName => String.t(),
          :friendKey => String.t(),
          :friendRequestStatus => String.t() | nil,
          :id => String.t(),
          :instanceId => String.t() | nil,
          :isFriend => boolean(),
          :last_activity => String.t(),
          :last_login => String.t(),
          :last_platform => String.t(),
          :location => String.t() | nil,
          :note => String.t() | nil,
          :profilePicOverride => String.t(),
          :state => VRChat.Model.UserState.t(),
          :status => VRChat.Model.UserStatus.t(),
          :statusDescription => String.t(),
          :tags => [String.t()],
          :travelingToInstance => String.t() | nil,
          :travelingToLocation => String.t() | nil,
          :travelingToWorld => String.t() | nil,
          :userIcon => String.t(),
          :username => String.t() | nil,
          :worldId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.User do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:date_joined, :date, nil, options)
    |> deserialize(:developerType, :struct, VRChat.Model.DeveloperType, options)
    |> deserialize(:state, :struct, VRChat.Model.UserState, options)
    |> deserialize(:status, :struct, VRChat.Model.UserStatus, options)
  end
end
