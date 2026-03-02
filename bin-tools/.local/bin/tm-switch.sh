#!/bin/zsh

# 1. Get the list of sessions, formatted for fzf
# 2. Use fzf with a preview window to show active panes in that session
# 3. Switch or attach to the selection

session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf \
  --exit-0 \
  --header "  󰆟  TMUX SESSIONS" \
  --prompt "  Search: " \
  --pointer "▶" \
  --color="header:bold:blue,prompt:bold:magenta,pointer:bold:red" \
  --layout=reverse \
  --height=40% \
  --preview 'tmux list-panes -t {} -F "Window: #W | Pane: #P | #T" | column -t -s "|"' \
  --preview-window=right:50%:wrap)

# If no session was selected (ESC), just exit
[[ -z "$session" ]] && return

# Logic to switch if inside tmux, or attach if outside
if [[ -z "$TMUX" ]]; then
  tmux attach-session -t "$session"
else
  tmux switch-client -t "$session"
fi
