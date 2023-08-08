# load source files
SCRIPT_DIR=$HOME/dotfiles
source $SCRIPT_DIR/zsh/alias.zsh
source $SCRIPT_DIR/zsh/path.zsh
source $SCRIPT_DIR/zsh/plugins.zsh
source $SCRIPT_DIR/zsh/p10k.zsh

# anyenv
eval "$(anyenv init -)"
