# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.CreateGroupRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :shortCode,
    :description,
    :joinState,
    :iconId,
    :bannerId,
    :privacy,
    :roleTemplate
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :shortCode => String.t(),
          :description => String.t() | nil,
          :joinState => VRChat.Model.GroupJoinState.t() | nil,
          :iconId => String.t() | nil,
          :bannerId => String.t() | nil,
          :privacy => VRChat.Model.GroupPrivacy.t() | nil,
          :roleTemplate => VRChat.Model.GroupRoleTemplate.t()
        }
end

defimpl Poison.Decoder, for: VRChat.Model.CreateGroupRequest do
  import VRChat.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:joinState, :struct, VRChat.Model.GroupJoinState, options)
    |> deserialize(:privacy, :struct, VRChat.Model.GroupPrivacy, options)
    |> deserialize(:roleTemplate, :struct, VRChat.Model.GroupRoleTemplate, options)
  end
end