# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.TwoFactorAuthCode do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :code
  ]

  @type t :: %__MODULE__{
    :code => String.t
  }
end

defimpl Poison.Decoder, for: VRChat.Model.TwoFactorAuthCode do
  def decode(value, _options) do
    value
  end
end

