# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.AddGroupGalleryImageRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :fileId
  ]

  @type t :: %__MODULE__{
          :fileId => String.t()
        }
end

defimpl Poison.Decoder, for: VRChat.Model.AddGroupGalleryImageRequest do
  def decode(value, _options) do
    value
  end
end
