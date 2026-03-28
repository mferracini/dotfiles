#!/usr/bin/env zsh
set -euo pipefail

branch="$1"
worktree="${2:-$1}"
repo_root=$(git rev-parse --show-toplevel)

if [ -z "$branch" ]; then
  echo "Usage: gwt <branch_name> [worktree_name]"
  exit 1
fi

git checkout master &&
  git pull &&
  git worktree add -b "$branch" "../$worktree" master &&
  mkdir -p "../$worktree/.claude" &&
  cp "$repo_root/.claude/settings.local.json" "../$worktree/.claude/settings.local.json" &&
  echo "Worktree created at ../$worktree on branch $branch"
