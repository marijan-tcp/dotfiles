ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_CONDA_PREFIX='%F{green}('
ZSH_THEME_CONDA_SUFFIX=')%f'

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='
%(?,,%{$fg[red]%}^C%{$reset_color%}
)%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)
${CONDA_DEFAULT_ENV:+$(conda_prompt_info) }$(prompt_char) '

RPROMPT='%{$fg[green]%}[%*]%{$reset_color%}'
