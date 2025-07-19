# load source files
SCRIPT_DIR=$HOME/dotfiles
source $SCRIPT_DIR/zsh/alias.zsh
source $SCRIPT_DIR/zsh/path.zsh

# homebrew
# `.zprofile` に記述する為、管理外。

# anyenv
eval "$(anyenv init -)"

# locale
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# Prompt
PROMPT="%~ > "
# RPROMPT="%T"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
