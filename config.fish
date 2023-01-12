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
set -gx nvm_default_version v19.3.0

# keybindings
function fish_user_key_bindings
  bind \cg __ghq_repository_search
end

# load aliases
user_functions 
user_functions_alias

# default editor
set -gx EDITOR "nvim"

# zk
set -gx ZK_EDITOR "nvim"

## llvm
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"
