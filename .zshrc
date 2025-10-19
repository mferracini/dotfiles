# Load seperated config files
for conf in "$HOME/.config/zsh/config/"*.zsh; do
  source "${conf}"
done
unset conf



export SKP_SDK_PATH="/usr/local/SketchUpSDK"
export DYLD_LIBRARY_PATH="$SKP_SDK_PATH/bin:$DYLD_LIBRARY_PATH"
export PATH="$SKP_SDK_PATH/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

eval "$(zoxide init zsh)"
export RANGER_FURY_LOCATION=/Users/mferracini/.fury #Added by Fury CLI
export RANGER_FURY_VENV_LOCATION=/Users/mferracini/.fury/fury_venv #Added by Fury CLI

# Added by Fury CLI installation process
declare FURY_BIN_LOCATION="/Users/mferracini/.fury/fury_venv/bin" # Added by Fury CLI installation process
export PATH="$PATH:$FURY_BIN_LOCATION" # Added by Fury CLI installation process
# Added by Fury CLI installation process

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mferracini/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mferracini/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mferracini/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mferracini/google-cloud-sdk/completion.zsh.inc'; fi
