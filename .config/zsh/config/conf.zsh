
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
unsetopt BEEP
plugins=(git)

. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh

# starship init
 eval "$(starship init zsh)"
