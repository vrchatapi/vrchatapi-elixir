# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Api.Friends do
  @moduledoc """
  API calls for all endpoints tagged `Friends`.
  """

  alias VRChat.Connection
  import VRChat.RequestBuilder


  @doc """
  Delete Friend Request
  Deletes an outgoing pending friend request to another user. To delete an incoming friend request, use the `deleteNotification` endpoint instead.

  ## Parameters

  - connection (VRChat.Connection): Connection to server
  - user_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, VRChat.Model.Success.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec delete_friend_request(Tesla.Env.client, String.t, keyword()) :: {:ok, VRChat.Model.Success.t} | {:ok, VRChat.Model.Error.t} | {:error, Tesla.Env.t}
  def delete_friend_request(connection, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/user/#{user_id}/friendRequest")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %VRChat.Model.Success{}},
      { 401, %VRChat.Model.Error{}},
      { 404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Send Friend Request
  Send a friend request to another user.

  ## Parameters

  - connection (VRChat.Connection): Connection to server
  - user_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, VRChat.Model.Notification.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec friend(Tesla.Env.client, String.t, keyword()) :: {:ok, VRChat.Model.Notification.t} | {:ok, VRChat.Model.Error.t} | {:error, Tesla.Env.t}
  def friend(connection, user_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/user/#{user_id}/friendRequest")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %VRChat.Model.Notification{}},
      { 401, %VRChat.Model.Error{}},
      { 404, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Check Friend Status
  Retrieve if the user is currently a friend with a given user, if they have an outgoing friend request, and if they have an incoming friend request. The proper way to receive and accept friend request is by checking if the user has an incoming `Notification` of type `friendRequest`, and then accepting that notification.

  ## Parameters

  - connection (VRChat.Connection): Connection to server
  - user_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, VRChat.Model.FriendStatus.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_friend_status(Tesla.Env.client, String.t, keyword()) :: {:ok, VRChat.Model.FriendStatus.t} | {:ok, VRChat.Model.Error.t} | {:error, Tesla.Env.t}
  def get_friend_status(connection, user_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user/#{user_id}/friendStatus")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %VRChat.Model.FriendStatus{}},
      { 401, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  List Friends
  List information about friends.

  ## Parameters

  - connection (VRChat.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :offset (integer()): A zero-based offset from the default object sorting from where search results start.
    - :n (integer()): The number of objects to return.
    - :offline (boolean()): Returns *only* offline users if true, returns only online and active users if false
  ## Returns

  {:ok, [%LimitedUser{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_friends(Tesla.Env.client, keyword()) :: {:ok, VRChat.Model.Error.t} | {:ok, list(VRChat.Model.LimitedUser.t)} | {:error, Tesla.Env.t}
  def get_friends(connection, opts \\ []) do
    optional_params = %{
      :offset => :query,
      :n => :query,
      :offline => :query
    }
    %{}
    |> method(:get)
    |> url("/auth/user/friends")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%VRChat.Model.LimitedUser{}]},
      { 401, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Unfriend
  Unfriend a user by ID.

  ## Parameters

  - connection (VRChat.Connection): Connection to server
  - user_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, VRChat.Model.Success.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec unfriend(Tesla.Env.client, String.t, keyword()) :: {:ok, VRChat.Model.Success.t} | {:ok, VRChat.Model.Error.t} | {:error, Tesla.Env.t}
  def unfriend(connection, user_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/auth/user/friends/#{user_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %VRChat.Model.Success{}},
      { 400, %VRChat.Model.Error{}},
      { 401, %VRChat.Model.Error{}}
    ])
  end
end