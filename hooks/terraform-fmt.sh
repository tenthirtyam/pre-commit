# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v terraform &>/dev/null; then
  >&2 echo "terraform not installed."
  exit 1
fi

original_path=$PATH

ERROR=0

echo "==> Running 'terraform fmt'..."
for file in "$@"; do
  terraform fmt -diff -check "$file" || ERROR=$?
done

export PATH="$original_path"

exit "$ERROR"
