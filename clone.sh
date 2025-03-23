#!/usr/bin/env bash

# Clones the WalshyDev/cf-status-worker repo at a specific commit
# Uses a custom GIT_DIR to allow the repo to be tracked in the parent git repo
# Then, applies all patches from the patches directory

set -e -o pipefail

COMMIT_SHA="5f99470902069407620b74f2f7f8f2d29a052b5c"
WORKER_DIR="$(pwd)/worker"
WORKER_PATCHES="$(pwd)/patches"
export GIT_DIR="$(pwd)/.git.worker"

rm -rf "$WORKER_DIR" "$GIT_DIR"
mkdir "$WORKER_DIR"
cd "$WORKER_DIR"

git init
git config --bool core.bare false
git config --path core.worktree "$WORKER_DIR"
git remote add origin git@github.com:WalshyDev/cf-status-worker.git
git fetch origin "$COMMIT_SHA"
git reset --hard "$COMMIT_SHA"

for patch in $WORKER_PATCHES/*.patch; do
    git apply $patch
done
