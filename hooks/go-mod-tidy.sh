# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v go &>/dev/null; then
  >&2 echo "go not installed."
  exit 1
fi

echo "==> Running 'go mod tidy'..."
for dir in $(echo "$@" | xargs -n1 dirname | sort -u | uniq); do
  pushd "$dir" >/dev/null
  if [ -f go.mod ]; then
    echo "==> Running 'go mod tidy' in '$dir'..."
    go mod tidy
  fi
  popd >/dev/null
done
