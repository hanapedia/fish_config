# Theme
if status is-interactive
    # Commands to run in interactive sessions can go here
    # Theme
    set -g theme_color_scheme nord
    set -g theme_display_date no
    set -g theme_display_git_default_branch yes
end

# Path
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/bin
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# Language version managers
pyenv init - | source
set -gx nvm_default_version v17.8.0

# keybindings
function fish_user_key_bindings
  bind \cg __ghq_repository_search
end


# load aliases
user_functions 

# default editor
set -gx EDITOR "nvim"

# zk
set -gx ZK_EDITOR "nvim"
