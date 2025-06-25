defmodule VRChat.Middleware do
  alias VRChat.Connection
  @behaviour Tesla.Middleware

  def parse_cookies(nil), do: []

  def parse_cookies(cookie) do
    String.split(cookie, "; ")
    |> Enum.filter(&(&1 !== ""))
    |> Enum.map(&parse_cookie(&1))
  end

  def parse_cookie(cookie) do
    [key, value] = String.split(cookie, "; ") |> List.first() |> String.split("=")

    {key, value}
  end

  def merge_cookies(cookies, headers \\ []) do
    headers
    |> Enum.filter(fn {x, _} -> x == "set-cookie" end)
    |> Enum.map(fn {_, set_cookie} -> parse_cookie(set_cookie) end)
    |> Enum.into(cookies)
    |> Map.to_list()
    |> stringify_cookies()
  end

  def stringify_cookies(cookies) do
    cookies
    |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
    |> Enum.join("; ")
  end

  def update_headers(client_headers, headers) do
    client_headers = client_headers |> Map.new()

    headers = Enum.filter(headers, fn {x, _} -> x == "set-cookie" end)

    cookie =
      merge_cookies(
        client_headers["cookie"]
        |> parse_cookies()
        |> Map.new(),
        headers
      )

    headers
    |> Enum.into(client_headers)
    |> Map.delete("set-cookie")
    |> Map.put("cookie", cookie)
    |> Map.to_list()
  end

  def assign_session({:error, response}, _) do
    {:ok, %VRChat.Model.Error{}, response}
  end

  def assign_session(
        {:ok, %Tesla.Env{headers: headers, __client__: client} = response},
        request
      ) do
    client =
      Tesla.Client.middleware(client)
      |> Enum.map(fn a -> if(is_atom(a), do: {a, []}, else: a) end)
      |> Keyword.drop([Tesla.Middleware.BasicAuth])
      |> Keyword.get_and_update(Tesla.Middleware.Headers, &{&1, update_headers(&1, headers)})
      |> elem(1)
      |> Tesla.client()

    with {:ok, client, response} <- maybe_mfa_validate(client, response, request) do
      {:ok, response, client}
    end
  end

  def maybe_mfa_validate(client, response, request) do
    totp_secret =
      Tesla.Client.middleware(client)
      |> Keyword.get(VRChat.Middleware)
      |> Keyword.get(:totp_secret)
      |> Base.decode32!()

    case JSON.decode!(response.body) do
      %{"requiresTwoFactorAuth" => ["emailOtp"]} ->
        raise "email two factor not supported, consider enabling totp and provide the generation secret via :totp_secret"

      %{"requiresTwoFactorAuth" => ["totp", "otp"]} ->
        with {:ok, client, _} <-
               VRChat.Authentication.verify2_fa(client,
                 body: %VRChat.Model.TwoFactorAuthCode{
                   code: NimbleTOTP.verification_code(totp_secret, time: NaiveDateTime.utc_now())
                 }
               ),
             {:ok, response} <- Connection.request(client, request) do
          {:ok, client, {:ok, response}}
        end

      _ ->
        {:ok, client, {:ok, response}}
    end
  end

  @impl true
  def call(env, next, _) do
    Tesla.run(env, next)
  end
end
