# Copyright (c) 2025 Ryan Johnson. All Rights Reserved.
# SPDX-License-Identifier: BSD-2-Clause

#!/usr/bin/env bash

set -u -o pipefail

export PATH="$PATH:/usr/local/bin"

exit_status=0
enable_list=""

if ! command -v shellcheck &>/dev/null; then
  >&2 echo "shellcheck not installed."
  exit 1
fi

parse_arguments() {
	while (($# > 0)); do
		local PARAMETER="${1%[ =]*}"
		local VALUE="${1#*[ =]}"
		if [[ "$PARAMETER" == "$VALUE" ]]; then VALUE="$2"; fi
		shift
		case "$PARAMETER" in
		--enable)
			enable_list="$enable_list $VALUE"
			;;
		-*)
			echo "Error: Unknown option: $PARAMETER" >&2
			exit 1
			;;
		*)
			files="$files $PARAMETER"
			;;
		esac
	done
	enable_list="${enable_list## }"
}

parse_arguments "$@"

echo "==> Running 'shellcheck'..."
for FILE in $files; do
	SHEBANG_REGEX='^#!\(/\|/.*/\|/.* \)\(\(ba\|da\|k\|a\)*sh\|bats\)$'
	if (head -1 "$FILE" | grep "$SHEBANG_REGEX" >/dev/null); then
		if ! shellcheck ${enable_list:+ --enable="$enable_list"} "$FILE"; then
			exit_status=1
		fi
	elif [[ "$FILE" =~ .+\.(sh|bash|dash|ksh|ash|bats)$ ]]; then
		echo "$FILE: missing shebang"
		exit_status=1
	fi
done

exit "$exit_status"
