# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.Success do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :success
  ]

  @type t :: %__MODULE__{
          :success => VRChat.Model.Response.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.Success do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:success, :struct, VRChat.Model.Response, options)
  end
end
