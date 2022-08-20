# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.License do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :forId,
    :forType,
    :forName,
    :forAction
  ]

  @type t :: %__MODULE__{
    :forId => String.t,
    :forType => VRChat.Model.LicenseType.t,
    :forName => String.t,
    :forAction => VRChat.Model.LicenseAction.t
  }
end

defimpl Poison.Decoder, for: VRChat.Model.License do
  import VRChat.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:forType, :struct, VRChat.Model.LicenseType, options)
    |> deserialize(:forAction, :struct, VRChat.Model.LicenseAction, options)
  end
end

