if status is-interactive
    # Commands to run in interactive sessions can go here
    # Theme
    set -g theme_color_scheme nord
    set -g theme_display_date no
    set -g theme_display_git_default_branch yes
end

set -gx LANG "en-US.utf-8"
set -gx LC_ALL "en-US.utf-8"

fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/bin

pyenv init - | source

function fish_user_key_bindings
  bind \cg __ghq_repository_search
end

source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

user_functions 
