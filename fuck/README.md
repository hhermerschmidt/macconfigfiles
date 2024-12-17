# The Fuck

[The Fuck](https://github.com/nvbn/thefuck) corrects typing errors in previous console commands.

- Installation via package manager.
- Initialise the fuck via `$ZSH_CUSTOM/init_tools.zsh`

```zsh
# $ZSH_CUSTOM/init_tools.zsh

eval "$(thefuck --alias)"
```

- Add oh my zsh plugin

```zsh
# ~/.zshrc

plugins=( ... thefuck)
```