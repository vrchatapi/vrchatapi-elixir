# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Model.UserExists do
  @moduledoc """
  Status object representing if a queried user by username or userId exists or not. This model is primarily used by the `/auth/exists` endpoint, which in turn is used during registration. Please see the documentation on that endpoint for more information on usage.
  """

  @derive [Poison.Encoder]
  defstruct [
    :userExists
  ]

  @type t :: %__MODULE__{
          :userExists => boolean()
        }
end

defimpl Poison.Decoder, for: VRChat.Model.UserExists do
  def decode(value, _options) do
    value
  end
end
