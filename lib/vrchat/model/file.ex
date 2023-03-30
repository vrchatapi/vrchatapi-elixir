# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.File do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :extension,
    :id,
    :mimeType,
    :name,
    :ownerId,
    :tags,
    :versions
  ]

  @type t :: %__MODULE__{
          :extension => String.t(),
          :id => String.t(),
          :mimeType => VRChat.Model.MimeType.t(),
          :name => String.t(),
          :ownerId => String.t(),
          :tags => [String.t()],
          :versions => [VRChat.Model.FileVersion.t()]
        }
end

defimpl Poison.Decoder, for: VRChat.Model.File do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:mimeType, :struct, VRChat.Model.MimeType, options)
    |> deserialize(:versions, :list, VRChat.Model.FileVersion, options)
  end
end
