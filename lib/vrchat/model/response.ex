# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :status_code
  ]

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :status_code => integer()
        }
end

defimpl Poison.Decoder, for: VRChat.Model.Response do
  def decode(value, _options) do
    value
  end
end
