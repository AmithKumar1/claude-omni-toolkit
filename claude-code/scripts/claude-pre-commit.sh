#!/bin/bash

# pre-commit.sh
# 
# A Git pre-commit hook that uses the Claude Code CLI to automatically 
# review your staged changes before allowing the commit to proceed.
#
# Requirements: 
# - `claude` CLI must be installed and authenticated
# 
# Installation: 
# Place this file in `.git/hooks/pre-commit` and run `chmod +x .git/hooks/pre-commit`

echo "🤖 Invoking Claude Code to review your staged changes..."

# Get the diff of what is currently staged
STAGED_DIFF=$(git diff --cached)

# If no changes, allow commit
if [ -z "$STAGED_DIFF" ]; then
  exit 0
fi

# Ask Claude to review the diff
# We use the -p flag to print to stdout rather than starting an interactive session
REVIEW=$(claude -p "Review this Git diff. If there are obvious critical security flaws, syntax errors, or major anti-patterns, reply with 'FAIL: ' followed by a brief reason. If it looks acceptable or only contains minor stylistic issues, reply with strictly 'PASS'. Here is the diff: $STAGED_DIFF")

if [[ "$REVIEW" == *"FAIL:"* ]]; then
  echo ""
  echo "❌ Commit rejected by Claude's automated review:"
  echo "$REVIEW"
  echo ""
  echo "Please fix these issues and stage your changes again."
  exit 1
fi

echo "✅ Claude check passed. Proceeding with commit."
exit 0
