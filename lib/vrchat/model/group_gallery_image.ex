# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.GroupGalleryImage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :groupId,
    :galleryId,
    :fileId,
    :imageUrl,
    :createdAt,
    :submittedByUserId,
    :approved,
    :approvedByUserId,
    :approvedAt
  ]

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :groupId => String.t() | nil,
          :galleryId => String.t() | nil,
          :fileId => String.t() | nil,
          :imageUrl => String.t() | nil,
          :createdAt => DateTime.t() | nil,
          :submittedByUserId => String.t() | nil,
          :approved => boolean() | nil,
          :approvedByUserId => String.t() | nil,
          :approvedAt => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: VRChat.Model.GroupGalleryImage do
  def decode(value, _options) do
    value
  end
end
