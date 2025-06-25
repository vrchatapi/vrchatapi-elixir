#!/bin/bash
set -e

sedi() {
	sed "$1" "$2" > "$2.tmp" && mv "$2.tmp" "$2"
}

npm install @openapitools/openapi-generator-cli

rm -rf lib test config *.exs *.lock

curl https://vrchat.community/openapi.yaml > openapi.yaml
VERSION=$(yq .info.version openapi.yaml)

./node_modules/\@openapitools/openapi-generator-cli/main.js generate \
	-g elixir \
	--additional-properties="packageName=vrchat,invokerPackage=VRChat" \
	--git-user-id=vrchatapi \
	--git-repo-id=vrchatapi-elixir \
	-o . \
	-i openapi.yaml \
	--http-user-agent="vrchatapi-elixir"

# Fix version

sedi "s/version: \"1.0.0\"/version: \"$VERSION\"/" ./mix.exs
sedi "s/1.0.0 - elixir/$VERSION - elixir/" ./lib/vr_chat/connection.ex

# Rename config key

sedi "s/vr_chat_api_documentation/vrchat/" ./config/config.exs
sedi "s/VR_CHAT_API_DOCUMENTATION/VRCHAT/" ./config/runtime.exs
sedi "s/vr_chat_api_documentation/vrchat/" ./config/runtime.exs
sedi "s/vr_chat_api_documentation/vrchat/" ./lib/vr_chat/connection.ex

# Rename folder
mv ./lib/vr_chat ./lib/vrchat
sedi "s/vr_chat/vrchat/g" ./.openapi-generator/FILES

sedi "s/Elixir/vrchat-elixir/" ./lib/vrchat/connection.ex

find lib -type f -name "*.ex" | while IFS= read -r file; do
	sedi "s/VRChat.Api./VRChat./g; s/VRChat.Model.String/String/g" "$file"
done

cp ./patches/middleware.ex ./lib/vrchat/middleware.ex
git apply --whitespace=fix patches/dependencies.patch
mix deps.get

git apply --whitespace=fix patches/connection.patch
mix format

git apply --whitespace=fix patches/authentication.patch
mix format

mix compile

sedi "s/vrchat-elixir/Elixir/" ./README.md


version=$(grep "version: " ./mix.exs | cut -d '"' -f 2)
sedi "s/\"~> [0-9]*\.[0-9]*\.[0-9]*\"/\"~> $version\"/" README.md
sedi '/description: """/{N;N;s/description: """.*""",/description: "VRChat API for Elixir",/;}' mix.exs

git apply --whitespace=fix patches/mix.patch

# Set up cookie based authentication
# git apply --ignore-space-change --ignore-whitespace ./patches/cookies.patch
