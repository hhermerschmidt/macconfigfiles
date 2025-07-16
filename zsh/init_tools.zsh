source ~/.config/fzf/key-bindings.zsh
source ~/.config/fzf/completion.zsh

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C -L 2 {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

source ~/.config/broot/launcher/bash/br

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/henning/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/henning/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/henning/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/henning/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/henning/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/henning/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

export PATH="/Users/henning/.pixi/bin:$PATH"

eval "$(atuin init zsh)"
eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"
eval "$(navi widget zsh)"
eval "$(starship init zsh)"
