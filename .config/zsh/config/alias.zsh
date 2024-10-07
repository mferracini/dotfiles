#Neovim configs alias
alias v='nvim' # default Neovim config
alias vv="NVIM_APPNAME=LazyVim nvim"
alias va="NVIM_APPNAME=auxvim nvim"


# git related
alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -D'
alias gswd="git switch develop"
alias gpod="git pull origin develop"
alias gfa="git fetch --all"


# open neovim directly in some directory
alias dotfiles='nvim ~/dotfiles'
alias sb='vv ~/workspace/second-brain'

alias lg='lazygit'
# re-source .zshrc
alias reload='source ~/.zshrc'

