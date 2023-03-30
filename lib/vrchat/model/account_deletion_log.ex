# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.AccountDeletionLog do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :message,
    :deletionScheduled,
    :dateTime
  ]

  @type t :: %__MODULE__{
          :message => String.t() | nil,
          :deletionScheduled => DateTime.t() | nil,
          :dateTime => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.AccountDeletionLog do
  def decode(value, _options) do
    value
  end
end