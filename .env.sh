#!/bin/zsh

# Add commonly used folders to $PATH
export GOPATH=$HOME/go
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/openvpn/sbin/:$GOPATH/bin:$PATH"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }

# C++ compile
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

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

export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
fpath[1,0]="/opt/homebrew/share/zsh/site-functions"
eval "$(/usr/bin/env PATH_HELPER_ROOT="/opt/homebrew" /usr/libexec/path_helper -s)"
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"

# RPROMPT='[%D{%L:%M:%S}] '$RPROMPT
