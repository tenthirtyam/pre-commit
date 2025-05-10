# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v go &>/dev/null; then
  >&2 echo "go not installed."
  exit 1
fi

echo "==> Running 'go fmt'..."
for file in "$@"; do
  go fmt "./$(dirname "$file")"
done
