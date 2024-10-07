alias brow='arch --x86_64 /usr/local/Homebrew/bin/brew'
alias intel='arch --x86_64 zsh'
alias arm='arch --arm64 zsh'
alias ranker-cli='python cli/src/cli.py'
export PATH="$HOME/Library/Python/3.8/bin:$PATH"
export RANGER_FURY_LOCATION=/Users/mferracini/.fury #Added by Fury CLI
export RANGER_FURY_VENV_LOCATION=/Users/mferracini/.fury/fury_venv #Added by Fury CLI
# Added by Fury CLI installation process
declare FURY_BIN_LOCATION="/Users/mferracini/.fury/fury_venv/bin" # Added by Fury CLI installation process
export PATH="$PATH:$FURY_BIN_LOCATION" # Added by Fury CLI installation process

update-fury-token()
{
   fury get-token; export TIGER_TOKEN=$(fury get-token | tail -1)
}

alias meli='cd ~/workspace/PARA/projects/meli'


