# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.UserStatus do
  @moduledoc """
  Defines the User's current status, for example \"ask me\", \"join me\" or \"offline. This status is a combined indicator of their online activity and privacy preference.
  """

  @derive [Poison.Encoder]
  defstruct []

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: VRChat.Model.UserStatus do
  def decode(value, _options) do
    value
  end
end
