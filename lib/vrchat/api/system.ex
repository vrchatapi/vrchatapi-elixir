# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule VRChat.System do
  @moduledoc """
  API calls for all endpoints tagged `System`.
  """

  alias VRChat.Connection
  import VRChat.RequestBuilder

  @doc """
  Fetch API Config
  API config contains configuration that the clients needs to work properly.  Currently the most important value here is `clientApiKey` which is used for all other API endpoints.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.ApiConfig.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_config(Tesla.Env.client(), keyword()) ::
          {:ok, VRChat.Model.ApiConfig.t()} | {:error, Tesla.Env.t()}
  def get_config(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/config")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.ApiConfig{}}
    ])
  end

  @doc """
  Download CSS
  Fetches the CSS code to the frontend React website.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:variant` (String.t): Specifies which `variant` of the site. Public is the end-user site, while `internal` is the staff-only site with special pages for moderation and management.
    - `:branch` (String.t): Specifies which git branch the site should load frontend source code from.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_css(Tesla.Env.client(), keyword()) ::
          {:ok, VRChat.Model.Error.t()} | {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_css(connection, opts \\ []) do
    optional_params = %{
      :variant => :query,
      :branch => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/css/app.css")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Current Online Users
  Returns the current number of online users.  **NOTE:** The response type is not a JSON object, but a simple JSON integer.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_current_online_users(Tesla.Env.client(), keyword()) ::
          {:ok, Integer.t()} | {:error, Tesla.Env.t()}
  def get_current_online_users(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/visits")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Check API Health
  ~~Gets the overall health status, the server name, and the current build version tag of the API.~~  **DEPRECATED:** VRChat has suddenly restricted this endpoint for unknown reasons, and now always return 401 Unauthorized.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, VRChat.Model.ApiHealth.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_health(Tesla.Env.client(), keyword()) ::
          {:ok, VRChat.Model.ApiHealth.t()} | {:error, Tesla.Env.t()}
  def get_health(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/health")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %VRChat.Model.ApiHealth{}}
    ])
  end

  @doc """
  Show Information Notices
  IPS (Info Push System) is a system for VRChat to push out dynamic information to the client. This is primarily used by the Quick-Menu info banners, but can also be used to e.g. alert you to update your game to the latest version.  `include` is used to query what Information Pushes should be included in the response. If include is missing or empty, then no notices will normally be returned. This is an \"any of\" search.  `require` is used to limit what Information Pushes should be included in the response. This is usually used in combination with `include`, and is an \"all of\" search.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:require` (String.t): Tags to include (comma-separated). All of the tags needs to be present.
    - `:include` (String.t): Tags to include (comma-separated). Any of the tags needs to be present.

  ### Returns

  - `{:ok, [%InfoPush{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_info_push(Tesla.Env.client(), keyword()) ::
          {:ok, list(VRChat.Model.InfoPush.t())} | {:error, Tesla.Env.t()}
  def get_info_push(connection, opts \\ []) do
    optional_params = %{
      :require => :query,
      :include => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/infoPush")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%VRChat.Model.InfoPush{}]}
    ])
  end

  @doc """
  Download JavaScript
  Fetches the JavaScript code to the frontend React website.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:variant` (String.t): Specifies which `variant` of the site. Public is the end-user site, while `internal` is the staff-only site with special pages for moderation and management.
    - `:branch` (String.t): Specifies which git branch the site should load frontend source code from.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_java_script(Tesla.Env.client(), keyword()) ::
          {:ok, VRChat.Model.Error.t()} | {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_java_script(connection, opts \\ []) do
    optional_params = %{
      :variant => :query,
      :branch => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/js/app.js")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, %VRChat.Model.Error{}}
    ])
  end

  @doc """
  Current System Time
  Returns the current time of the API server.  **NOTE:** The response type is not a JSON object, but a simple JSON string.

  ### Parameters

  - `connection` (VRChat.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DateTime.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_system_time(Tesla.Env.client(), keyword()) ::
          {:ok, DateTime.t()} | {:error, Tesla.Env.t()}
  def get_system_time(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/time")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
