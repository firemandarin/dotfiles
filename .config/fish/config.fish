if status is-interactive
# Commands to run in interactive sessions can go here
end
fastfetch
# normal text
set -g fish_color_normal c7ccd1

# commands
set -g fish_color_command 89dceb

# parameters
set -g fish_color_param c7ccd1

# quotes
set -g fish_color_quote a3be8c

# errors
set -g fish_color_error e46876

# autosuggestions
set -g fish_color_autosuggestion 5c6370

# cwd
set -g fish_color_cwd c7ccd1

# operators
set -g fish_color_operator 89dceb

# comments
set -g fish_color_comment 5c6370

# alias
alias dnf "dnf --color=always"

fish_add_path $HOME/.cargo/bin
