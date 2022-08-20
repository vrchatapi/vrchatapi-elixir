# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.FileVersionUploadStatus do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :uploadId,
    :fileName,
    :nextPartNumber,
    :maxParts,
    :parts,
    :etags
  ]

  @type t :: %__MODULE__{
    :uploadId => String.t,
    :fileName => String.t,
    :nextPartNumber => float(),
    :maxParts => float(),
    :parts => [map()],
    :etags => [map()]
  }
end

defimpl Poison.Decoder, for: VRChat.Model.FileVersionUploadStatus do
  def decode(value, _options) do
    value
  end
end

