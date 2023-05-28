#!/usr/bin/env bash

session_name='rathena'

tmux new-session -d -s "${session_name}"
tmux split-window -t "${session_name}"
tmux split-window -t "${session_name}"
tmux split-window -t "${session_name}"

tmux select-layout -t "${session_name}" tiled

tmux send-keys -t "${session_name}":0.0 -R 'journalctl -fu rathena_login_server' ENTER
tmux send-keys -t "${session_name}":0.1 -R 'journalctl -fu rathena_char_server' ENTER
tmux send-keys -t "${session_name}":0.2 -R 'journalctl -fu rathena_map_server' ENTER
tmux send-keys -t "${session_name}":0.3 -R 'journalctl -fu rathena_web_server' ENTER