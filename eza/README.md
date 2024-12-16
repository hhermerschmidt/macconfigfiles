# eza

A modern replacement for `ls`

- See [here](https://github.com/eza-community/eza-themes) for themes
- Copy theme file to `~/.config/eza`
- Set `$EZA_CONFIG_DIR` to `/Users/<username>/.config/eza` (due to [this bug](https://github.com/eza-community/eza/issues/1224))

```zsh
# ~/.zshenv

export EZA_CONFIG_DIR="/Users/henning/.config/eza"
```

- Add aliases to `$ZSH_CUSTOM/aliases.zsh`:

```zsh
# $ZSH_CUSTOM/aliases.zsh

alias ls='eza'
alias l='eza -l --git --no-user --no-permissions'
alias ll='eza -l --git'
alias la='eza -la --git --color-scale'
```
