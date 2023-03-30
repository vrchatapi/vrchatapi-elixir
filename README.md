# VRChat API Library for Elixir

An Elixir client to interact with the unofficial VRChat API. Supports all REST calls specified in the [API specification](https://github.com/vrchatapi/specification).

This package has its own documentation available on HexDocs, but it is recommended to also refer to the main [VRChat API documentation](https://vrchatapi.github.io/).

## Disclaimer

This is the official response of the VRChat Team (from Tupper more specifically) on the usage of the VRChat API.

> Use of the API using applications other than the approved methods (website, VRChat application) are not officially supported. You may use the API for your own application, but keep these guidelines in mind:
> * We do not provide documentation or support for the API.
> * Do not make queries to the API more than once per 60 seconds.
> * Abuse of the API may result in account termination.
> * Access to API endpoints may break at any given time, with no warning.

As stated, this documentation was not created with the help of the official VRChat team. Therefore this documentation is not an official documentation of the VRChat API and may not be always up to date with the latest versions. If you find that a page or endpoint is not longer valid please create an issue and tell us so we can fix it.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

The package can be installed by adding `vrchat` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:vrchat, "~> 1.7.2"}]
end
```

Documentation can be found at [https://hexdocs.pm/vrchat](https://hexdocs.pm/vrchat).

## Usage
```elixir

conn = VRChat.Connection.new(username, password)
{:ok, user, conn} = VRChat.Authentication.get_current_user(tempconn)

VRChat.Avatars.get_avatar(conn, user.currentAvatar)
```

`get_current_user` validates the username and password, and returns a
new client with a usable auth key sent as a cookie for usage in the
rest of the api.

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your configuration files)
```elixir
config :vrchat, base_url: "https://api.vrchat.cloud/api/1"
```
