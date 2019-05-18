if hash dotnet 2>/dev/null; then
  _dotnet_bash_complete()
  {
    local word=${COMP_WORDS[COMP_CWORD]}
    local dotnetPath=${COMP_WORDS[1]}

    local completions=("$(dotnet complete --position ${COMP_POINT} "${COMP_LINE}")")

    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  }
  complete -f -F _dotnet_bash_complete dotnet
fi
