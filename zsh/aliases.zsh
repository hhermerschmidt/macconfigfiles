alias ls='eza'
alias l='eza -l --git --no-user --no-permissions'
alias ll='eza -l --git --icons'
alias la='eza -la --git --icons  --color-scale'

alias cd="z"

alias cat="bat"

alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias fvim='vim $(fzf --preview="bat --color=always --theme=OneHalfDark --style=numbers {}")'
