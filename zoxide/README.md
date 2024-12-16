# zoxide

A smarter `cd` command

- Add alias to `$ZSH_CUSTOM/aliases.zsh`:

```zsh
# $ZSH_CUSTOM/aliases.zsh

alias cd="z"
```

- Initialise zoxide via `$ZSH_CUSTOM/init_tools.zsh`

```zsh
# $ZSH_CUSTOM/init_tools.zsh

eval "$(zoxide init zsh)"
```
