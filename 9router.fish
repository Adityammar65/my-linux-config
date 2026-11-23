#!/usr/bin/env fish

if not tmux has-session -t 9router 2>/dev/null
    tmux new-session -d -s 9router '9router -t'
    tmux new-window -t 9router -n headroom 'headroom proxy --port 8787'
end
