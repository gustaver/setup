# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# pip and python 3
alias pip='pip3'
alias python='python3'

# jq for JSON schema
function json_schema() {
  jq 'def schema: if type == "object" then with_entries(.value |= schema) elif type == "array" then [if length > 0 then .[0] | schema else empty end] else type end; schema'
}
function json_paths() {
  jq '[paths(scalars) as $p | $p | join(".")]'
}