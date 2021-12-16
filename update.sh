#!/usr/bin/zsh

script_path="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
add_file_script_path="$script_path/add-file.sh"
profile_path="${script_path}/default"

pushd "$profile_path"
find . -type f | cut -c2- | tee >(cat) | xargs --replace /usr/bin/zsh "$add_file_script_path" "{}"
popd 1
