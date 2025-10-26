# Fish shell configuration

# Starship prompt
starship init fish | source

# Environment variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER bat

# Aliases
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first'
alias la='eza -a --icons --group-directories-first'
alias lla='eza -la --icons --group-directories-first'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias diff='delta'
alias top='btm'
alias du='dust'
alias df='duf'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# FZF keybindings (if fzf is installed)
if command -q fzf
    fzf --fish | source
end

# Custom functions can be added here