# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.Avatars do
  @moduledoc """
  API calls for all endpoints tagged `Avatars`.
  """

  alias VRChat.Connection
  import VRChat.RequestBuilder

  @doc """
  Create Avatar
  Create an avatar. It's possible to optionally specify a ID if you want a custom one. Attempting to create an Avatar with an already claimed ID will result in a DB error.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:body` (CreateAvatarRequest): 

  ### Returns

  - `{:ok, VRChat.Model.Avatar.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_avatar(Tesla.Env.client(), keyword()) ::
          {:ok, VRChat.Model.Avatar.t()} | {:ok, VRChat.Model.Error.t()} | {:error, Tesla.Env.t()}
  def create_avatar(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:post)
      |> url("/avatars")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.Avatar{}},
      {401, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Delete Avatar
  Delete an avatar. Notice an avatar is never fully \"deleted\", only its ReleaseStatus is set to \"hidden\" and the linked Files are deleted. The AvatarID is permanently reserved.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `avatar_id` (String.t): Must be a valid avatar ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.Avatar.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.Avatar.t()} | {:ok, VRChat.Model.Error.t()} | {:error, Tesla.Env.t()}
  def delete_avatar(connection, avatar_id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/avatars/#{avatar_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.Avatar{}},
      {401, %VRChat.Model.Error{}},
      {404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Get Avatar
  Get information about a specific Avatar.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `avatar_id` (String.t): Must be a valid avatar ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.Avatar.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.Avatar.t()} | {:ok, VRChat.Model.Error.t()} | {:error, Tesla.Env.t()}
  def get_avatar(connection, avatar_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/avatars/#{avatar_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.Avatar{}},
      {401, %VRChat.Model.Error{}},
      {404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  List Favorited Avatars
  Search and list favorited avatars by query filters.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:featured` (boolean()): Filters on featured results.
    - `:sort` (SortOption): The sort order of the results.
    - `:n` (integer()): The number of objects to return.
    - `:order` (OrderOption): Result ordering
    - `:offset` (integer()): A zero-based offset from the default object sorting from where search results start.
    - `:search` (String.t): Filters by world name.
    - `:tag` (String.t): Tags to include (comma-separated). Any of the tags needs to be present.
    - `:notag` (String.t): Tags to exclude (comma-separated).
    - `:releaseStatus` (ReleaseStatus): Filter by ReleaseStatus.
    - `:maxUnityVersion` (String.t): The maximum Unity version supported by the asset.
    - `:minUnityVersion` (String.t): The minimum Unity version supported by the asset.
    - `:platform` (String.t): The platform the asset supports.
    - `:userId` (String.t): Target user to see information on, admin-only.

  ### Returns

  - `{:ok, [%Avatar{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_favorited_avatars(Tesla.Env.client(), keyword()) ::
          {:ok, list(VRChat.Model.Avatar.t())}
          | {:ok, VRChat.Model.Error.t()}
          | {:error, Tesla.Env.t()}
  def get_favorited_avatars(connection, opts \\ []) do
    optional_params = %{
      :featured => :query,
      :sort => :query,
      :n => :query,
      :order => :query,
      :offset => :query,
      :search => :query,
      :tag => :query,
      :notag => :query,
      :releaseStatus => :query,
      :maxUnityVersion => :query,
      :minUnityVersion => :query,
      :platform => :query,
      :userId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/avatars/favorites")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VRChat.Model.Avatar{}]},
      {401, %VRChat.Model.Error{}},
      {403, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Get Own Avatar
  Get the current avatar for the user. This will return an error for any other user than the one logged in.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `user_id` (String.t): Must be a valid user ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.Avatar.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_own_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.Avatar.t()} | {:ok, VRChat.Model.Error.t()} | {:error, Tesla.Env.t()}
  def get_own_avatar(connection, user_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/users/#{user_id}/avatar")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.Avatar{}},
      {401, %VRChat.Model.Error{}},
      {403, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Search Avatars
  Search and list avatars by query filters. You can only search your own or featured avatars. It is not possible as a normal user to search other peoples avatars.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:featured` (boolean()): Filters on featured results.
    - `:sort` (SortOption): The sort order of the results.
    - `:user` (String.t): Set to `me` for searching own avatars.
    - `:userId` (String.t): Filter by UserID.
    - `:n` (integer()): The number of objects to return.
    - `:order` (OrderOption): Result ordering
    - `:offset` (integer()): A zero-based offset from the default object sorting from where search results start.
    - `:tag` (String.t): Tags to include (comma-separated). Any of the tags needs to be present.
    - `:notag` (String.t): Tags to exclude (comma-separated).
    - `:releaseStatus` (ReleaseStatus): Filter by ReleaseStatus.
    - `:maxUnityVersion` (String.t): The maximum Unity version supported by the asset.
    - `:minUnityVersion` (String.t): The minimum Unity version supported by the asset.
    - `:platform` (String.t): The platform the asset supports.

  ### Returns

  - `{:ok, [%Avatar{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_avatars(Tesla.Env.client(), keyword()) ::
          {:ok, list(VRChat.Model.Avatar.t())}
          | {:ok, VRChat.Model.Error.t()}
          | {:error, Tesla.Env.t()}
  def search_avatars(connection, opts \\ []) do
    optional_params = %{
      :featured => :query,
      :sort => :query,
      :user => :query,
      :userId => :query,
      :n => :query,
      :order => :query,
      :offset => :query,
      :tag => :query,
      :notag => :query,
      :releaseStatus => :query,
      :maxUnityVersion => :query,
      :minUnityVersion => :query,
      :platform => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/avatars")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VRChat.Model.Avatar{}]},
      {401, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Select Avatar
  Switches into that avatar.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `avatar_id` (String.t): Must be a valid avatar ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.CurrentUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec select_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.CurrentUser.t()}
          | {:ok, VRChat.Model.Error.t()}
          | {:error, Tesla.Env.t()}
  def select_avatar(connection, avatar_id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/avatars/#{avatar_id}/select")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.CurrentUser{}},
      {401, %VRChat.Model.Error{}},
      {404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Select Fallback Avatar
  Switches into that avatar as your fallback avatar.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `avatar_id` (String.t): Must be a valid avatar ID.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.CurrentUser.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec select_fallback_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.CurrentUser.t()}
          | {:ok, VRChat.Model.Error.t()}
          | {:error, Tesla.Env.t()}
  def select_fallback_avatar(connection, avatar_id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/avatars/#{avatar_id}/selectFallback")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.CurrentUser{}},
      {401, %VRChat.Model.Error{}},
      {403, %VRChat.Model.Error{}},
      {404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Update Avatar
  Update information about a specific avatar.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `avatar_id` (String.t): Must be a valid avatar ID.
  - `opts` (keyword): Optional parameters
    - `:body` (UpdateAvatarRequest): 

  ### Returns

  - `{:ok, VRChat.Model.Avatar.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec update_avatar(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, VRChat.Model.Avatar.t()} | {:ok, VRChat.Model.Error.t()} | {:error, Tesla.Env.t()}
  def update_avatar(connection, avatar_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    request =
      %{}
      |> method(:put)
      |> url("/avatars/#{avatar_id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.Avatar{}},
      {401, %VRChat.Model.Error{}},
      {404, %VRChat.Model.Error{}}
    ])
  end
end
