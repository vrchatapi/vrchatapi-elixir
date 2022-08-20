# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.Response do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :status_code
  ]

  @type t :: %__MODULE__{
    :message => String.t | nil,
    :status_code => integer()
  }
end

defimpl Poison.Decoder, for: VRChat.Model.Response do
  def decode(value, _options) do
    value
  end
end

