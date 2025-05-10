# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v golangci-lint &>/dev/null; then
  >&2 echo "golangci-lint not installed."
  exit 1
fi

original_path="$PATH"

ERROR=0

echo "==> Running 'golangci-lint'..."
for file in "$@"; do
  golangci-lint run --new-from-rev HEAD "$file" || ERROR=$?
done

export PATH="$original_path"

exit "$ERROR"
