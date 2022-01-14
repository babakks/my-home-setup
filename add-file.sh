#!/usr/bin/zsh

script_path="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
src_path="$(realpath --no-symlinks "$1")"
dest_path="${script_path}/default${src_path}"
dest_dir="$(dirname "$dest_path")"
mkdir -p "$dest_dir"
cp --no-dereference "$src_path" "$dest_path"
