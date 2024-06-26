# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.Subscription do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :steamItemId,
    :amount,
    :description,
    :period,
    :tier
  ]

  @type t :: %__MODULE__{
          :id => String.t(),
          :steamItemId => String.t(),
          :amount => float(),
          :description => String.t(),
          :period => VRChat.Model.SubscriptionPeriod.t(),
          :tier => float()
        }
end

defimpl Poison.Decoder, for: VRChat.Model.Subscription do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:period, :struct, VRChat.Model.SubscriptionPeriod, options)
  end
end
