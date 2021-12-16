#!/usr/bin/zsh

script_path="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
src_path="$(realpath "$1")"
dest_path="${script_path}/default${src_path}"
dest_dir="$(dirname "$dest_path")"
mkdir -p "$dest_dir"
cp "$src_path" "$dest_path"
