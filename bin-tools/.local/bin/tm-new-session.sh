#!/usr/bin/env zsh

# # 1. Use fzf to find a directory (ignores hidden folders by default)
# # Adjust the 'maxdepth' or paths to your liking
# dir=$(fd --maxdepth 4 -td . $HOME/dotfiles $HOME/workspace/pers $HOME/workspace/work 2>/dev/null | fzf \
#     --header " 📂 SELECT PROJECT DIRECTORY " \
#     --prompt " Project: " \
#     --layout=reverse --height=40%)
#
# # Exit if no directory selected
# [[ -z "$dir" ]] && exit 0
#
# # 2. Prompt for a session name (defaults to the folder name)
# folder_name=$(basename "$dir")
# read "session_name?Enter session name [$folder_name]: "
# session_name="${session_name:-$folder_name}"
#
# # 3. Create the session and setup windows
# # -d starts it in the background so we can configure windows first
# tmux new-session -d -s "$session_name" -c "$dir" -n "nvim"
#
# # Create the other two windows
# tmux new-window -t "$session_name":2 -c "$dir" -n "shell"
# tmux new-window -t "$session_name":3 -c "$dir" -n "agentic"
#
#
# # 4. Attach or Switch
# if [[ -z "$TMUX" ]]; then
#     tmux attach-session -t "$session_name"
# else
#     tmux switch-client -t "$session_name"
# fi
#

# 1. Define your category mapping
typeset -A categories
categories=(
    "󰈄 work"     "$HOME/workspace/work"
    "󰊄 personal" "$HOME/workspace/pers"
    "󰒓 config"   "$HOME/dotfiles"
    "󰠮 notes"    "$HOME/workspace/second-brain"
)

# 2. Select Category using fzf
choice=$(printf "%s\n" ${(k)categories} | fzf \
    --header " 󱗗  SELECT CATEGORY " \
    --prompt " Category: " \
    --layout=reverse --height=20% \
    --border=rounded)

[[ -z "$choice" ]] && exit 0
search_path=${categories[$choice]}

# 3. Logic: Direct Path vs. Directory Search
if [[ "$choice" == *"config"* || "$choice" == *"notes"* ]]; then
    # Skip fzf and use the category path directly
    dir="$search_path"
else
    subDir=$(fd . "$search_path" --min-depth 1 --max-depth 1 --type d --color never | fzf \
        --header " 📂 SELECT PROJECT: $choice " \
        --prompt " Project: " \
        --layout=reverse --height=40% \
        --border=rounded) 
    # Run fd search for projects within the category
    dir=$(fd . "$subDir" --min-depth 1 --max-depth 1 --type d --color never | fzf \
        --header " 📂 SELECT PROJECT: $choice " \
        --prompt " Project: " \
        --layout=reverse --height=40% \
        --border=rounded)
fi

[[ -z "$dir" ]] && exit 0

# 4. Handle Session Naming
folder_name=$(basename "$dir")
# If it's a "hidden" dotfile folder, remove the leading dot for the session name
read "session_name?Enter session name [$folder_name]: "
session_name="${session_name:-$folder_name}"


# 5. Create Session & Windows
# Check if session already exists to avoid errors
if ! tmux has-session -t "$session_name" 2>/dev/null; then
    tmux new-session -d -s "$session_name" -c "$dir" -n "nvim"
    tmux new-window -t "$session_name":2 -c "$dir" -n "shell"
    tmux new-window -t "$session_name":3 -c "$dir" -n "agentic"
    
fi

# 6. Switch Logic
if [[ -z "$TMUX" ]]; then
    tmux attach-session -t "$session_name"
else
    tmux switch-client -t "$session_name"
fi
