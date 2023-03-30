#!/bin/bash
set -e

npm install @openapitools/openapi-generator-cli

rm lib test config *.exs *.lock -rf

./node_modules/\@openapitools/openapi-generator-cli/main.js generate \
	-g elixir \
	--additional-properties="packageName=vrchat,invokerPackage=VRChat" \
	--git-user-id=vrchatapi \
	--git-repo-id=vrchat-elixir \
	-o . \
	-i https://raw.githubusercontent.com/vrchatapi/specification/gh-pages/openapi.yaml \
	--http-user-agent="vrchatapi-elixir"

# Rename config key

sed -i "s/vr_chat_api_documentation/vrchat/" ./config/config.exs
sed -i "s/VR_CHAT_API_DOCUMENTATION/VRCHAT/" ./config/runtime.exs
sed -i "s/vr_chat_api_documentation/vrchat/" ./config/runtime.exs
sed -i "s/vr_chat_api_documentation/vrchat/" ./lib/vr_chat/connection.ex

# Rename folder
mv ./lib/vr_chat ./lib/vrchat
sed -i "s/vr_chat/vrchat/g" ./.openapi-generator/FILES

sed -i "s/Elixir/vrchat-elixir/" ./lib/vrchat/connection.ex

find . -type f -name "*.ex" -exec sed -i "s/VRChat.Api./VRChat./g" {} \;
find . -type f -name "*.ex" -exec sed -i "s/VRChat.Model.String/String/g" {} \;

#git apply patches/authentication.patch

mix deps.get
mix format
mix compile

# Set up cookie based authentication
# git apply --ignore-space-change --ignore-whitespace ./patches/cookies.patch
