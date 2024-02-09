#!/usr/bin/env bash
src="$(dirname "${0}")/src"
command -v odin &>/dev/null || { echo "You don't have odin installed into your \${PATH}" && exit 1 ; }
odin run "${src}"
