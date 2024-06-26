# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.AvatarUnityPackageUrlObject do
  @moduledoc """
  **Deprecation:** `Object` has unknown usage/fields, and is always empty. Use normal `Url` field instead.
  """

  @derive [Poison.Encoder]
  defstruct [
    :unityPackageUrl
  ]

  @type t :: %__MODULE__{
          :unityPackageUrl => String.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.AvatarUnityPackageUrlObject do
  def decode(value, _options) do
    value
  end
end
