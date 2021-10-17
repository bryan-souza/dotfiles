############### General Configurations ###############

# Set escape time to 10ms
set -sg escape-time 0

# Enable 256 colors
set-option -sg default-terminal "screen-256color"

#################### Keybindings #####################

# Change <prefix> from C-b to C-a
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Easy reload configurations
bind r source-file ~/.tmux.conf

# Change split keys
bind -n M-L split-window -h
bind -n M-J split-window -v
unbind '"'
unbind %

# Change pane-switching keys
bind -n M-h select-pane -R
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -L

##################### Plugins #######################

# Set plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'b0o/tmux-autoreload'
set -g @plugin 'sei40kr/tmux-airline-dracula'
set -g @plugin 'tmux-plugins/tmux-yank'

# Configure plugins

# Initialize TPM
run -b '~/.tmux/plugins/tpm/tpm'
