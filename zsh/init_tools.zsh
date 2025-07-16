source ~/.config/fzf/key-bindings.zsh
source ~/.config/fzf/completion.zsh

source ~/.config/broot/launcher/bash/br

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

eval "$(atuin init zsh)"

eval "$(thefuck --alias)"

eval "$(zoxide init zsh)"

eval "$(navi widget zsh)"
