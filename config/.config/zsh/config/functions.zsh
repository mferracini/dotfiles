#!bin/bash
timer ()
{
 termdown $1m && afplay ~/dotfiles/media/bell.wav
}

venv_activate ()
{
   source .venv/bin/activate
}

clean_poetry_cache ()
{
    rm -rf ~/Library/Caches/pypoetry/cache && rm -rf ~/Library/Caches/pypoetry/artifacts
}

git_personal_config ()
{
    git config --local user.name "Mateus Ferracini"
    git config --local user.email "mat.ferracini@gmail.com"
}


function nvims() {
  items=("default" "LazyVim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}
