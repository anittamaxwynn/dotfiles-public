set fish_greeting ""  

set -g fish_term24bit 1

# Aliases
alias g git  
command -qv nvim && alias vim nvim  

# Replace ll withg eza
if type -q eza
    alias ll "eza -l -g --icons"  
    alias lla "ll -a"  
end

# Default editor
set -gx EDITOR nvim  

# Keybindings
bind \cx reload_fish

# Starship
starship init fish | source

# Fzf
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"  

# Tmux sessionizer
set PATH "$PATH":"$HOME/.scripts/"
bind \cf "tmux-sessionizer"

# UV (Python package manager)
uv generate-shell-completion fish | source
uvx --generate-shell-completion fish | source
