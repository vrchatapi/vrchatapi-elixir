# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.Favorite do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :favoriteId,
    :id,
    :tags,
    :type
  ]

  @type t :: %__MODULE__{
    :favoriteId => String.t,
    :id => String.t,
    :tags => [VRChat.Model.String.t],
    :type => VRChat.Model.FavoriteType.t
  }
end

defimpl Poison.Decoder, for: VRChat.Model.Favorite do
  import VRChat.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:type, :struct, VRChat.Model.FavoriteType, options)
  end
end

