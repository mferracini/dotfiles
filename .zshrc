# Load seperated config files
for conf in "$HOME/.config/zsh/config/"*.zsh; do
  source "${conf}"
done
unset conf



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mferracini/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mferracini/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mferracini/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mferracini/google-cloud-sdk/completion.zsh.inc'; fi

export SKP_SDK_PATH="/usr/local/SketchUpSDK"
export DYLD_LIBRARY_PATH="$SKP_SDK_PATH/bin:$DYLD_LIBRARY_PATH"
export PATH="$SKP_SDK_PATH/bin:$PATH"

source $HOME/.config/.exports/export.zsh

