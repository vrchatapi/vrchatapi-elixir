# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.RequestInviteRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :messageSlot
  ]

  @type t :: %__MODULE__{
          :messageSlot => integer() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.RequestInviteRequest do
  def decode(value, _options) do
    value
  end
end
