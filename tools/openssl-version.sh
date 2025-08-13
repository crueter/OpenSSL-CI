#!/bin/sh

# Grabs the latest OpenSSL version from the GitHub API.
# Requires: curl, jq, cut

API_URL=https://api.github.com/repos/openssl/openssl/releases/latest

curl $API_URL | jq -r '.tag_name' | cut -d "-" -f2
