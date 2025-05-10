# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

if ! command -v yapf &>/dev/null; then
  >&2 echo "yapf not installed."
  exit 1
fi

readonly STYLE="{BASED_ON_STYLE: google, ALIGN_CLOSING_BRACKET_WITH_VISUAL_INDENT: true, COLUMN_LIMIT: 120, BLANK_LINE_BEFORE_NESTED_CLASS_OR_DEF: true, COALESCE_BRACKETS: false, DEDENT_CLOSING_BRACKETS: true, SPLIT_BEFORE_DOT: true, SPLIT_COMPLEX_COMPREHENSION: true}"

echo "==> Running yapf..."
for file in "$@"; do
  if [[ "$file" =~ \.py$ ]]; then
    yapf -ri --style="$STYLE" "$file"
  fi
done
