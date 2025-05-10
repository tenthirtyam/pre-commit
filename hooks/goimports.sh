# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v goimports &>/dev/null; then
  >&2 echo "goimports not installed."
  exit 1
fi

echo "==> Running 'goimports'..."
for file in "$@"; do
  goimports -l -w "$(dirname "$file")"
done
