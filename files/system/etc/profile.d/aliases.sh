# files/system/etc/profile.d/aliases.sh

# Modern CLI replacements
alias ls='eza'
alias ll='eza -la --git'
alias lt='eza --tree --level=2'
alias cat='bat --paging=never'
alias find='fd'
alias grep='rg'
alias ps='procs'
alias df='duf'
alias du='dua'
alias top='btop'
alias man='tldr'

# zoxide (smarter cd)
eval "$(zoxide init bash)"
