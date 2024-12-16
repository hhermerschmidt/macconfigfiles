# fzf

A general purpose command-line fuzzy finder

- Copy config files (`completion.zsh`, `key-bindings.zsh`) to `~/.config/fzf`
- Load config files on startup:

```zsh
# $ZSH_CUSTOM/init_tools.sh

source ~/.config/fzf/key-bindings.zsh
source ~/.config/fzf/completion.zsh
```

- Enable preview using `vim`:

```zsh
# $ZSH_CUSTOM/aliases.sh

alias  fvim='vim $(fzf --preview="bat --color=always --theme=OneHalfDark --style=numbers {}")'
```
