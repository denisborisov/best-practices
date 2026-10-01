#!/bin/bash
# Allow only read-only git commands for the reviewer subagent.
CMD=$(jq -r '.tool_input.command // empty')

if echo "$CMD" | grep -qE '[;&|`$<>]'; then
  echo "Blocked: chained or redirected commands are not allowed." >&2
  exit 2
fi

if echo "$CMD" | grep -qE '^git (diff|status|log|show|blame)( |$)'; then
  exit 0
fi

echo "Blocked: reviewer may only run git diff/status/log/show/blame." >&2
exit 2
