source /usr/share/cachyos-fish-config/cachyos-config.fish
oh-my-posh init fish --config ~/material.omp.json | source
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
oh-my-posh init fish | source

if status is-login; or status is-interactive
    if type -q gnome-keyring-daemon
        gnome-keyring-daemon --start --components=secrets,ssh | while read line
            set -l item (string split "=" $line)
            if test (count $item) -eq 2
                set -gx $item[1] $item[2]
            end
        end
    end
end

# Hermes Agent command
fish_add_path "$HOME/.local/bin"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# APP SHORTCUTS

# google docs
function docs
    helium-browser "https://docs.google.com/document/u/1/?tgif=d" >/dev/null 2>&1 &
end

# chatgpt
function gpt
    helium-browser "https://chatgpt.com" >/dev/null 2>&1 &
end

# google drive
function drive
    helium-browser "https://drive.google.com/drive/my-drive?hl=ID" >/dev/null 2>&1 &
end

# google classroom
function classroom
    helium-browser "https://classroom.google.com/u/1/" >/dev/null 2>&1 &
end

# github
function github
    helium-browser "https://github.com/" >/dev/null 2>&1 &
end

# youtube
function yt
    helium-browser "https://youtube.com/" >/dev/null 2>&1 &
end

# figma
function figma
    helium-browser "https://www.figma.com/files/team/1060894060228597026/recents-and-sharing/recently-viewed?fuid=1060894054406811435" >/dev/null 2>&1 &
end

# 9router dashboard
function 9rd
    helium-browser "http://localhost:20128" >/dev/null 2>&1 &
end

# localhost
function localhost --description "Open localhost in browser"
    set -l port 80

    if test (count $argv) -ge 2; and test "$argv[1]" = -p
        set port $argv[2]
    end

    helium-browser "http://localhost:$port" >/dev/null 2>&1 &
end

# alias
if status is-interactive
    alias dps 'docker ps'
    alias dcu 'sudo docker compose up'
    alias dcd 'sudo docker compose down'
    alias dcr 'sudo docker compose restart'
    alias dcb 'sudo docker compose build'
    alias dcud 'sudo docker compose up -d'
    alias dcudb 'sudo docker compose up -d --build'
    alias dl 'docker logs -f'
    alias di 'docker images'
end

# cheatsheet
function cheatsheet
    echo "=== CHEATSHEET ==="

    echo ""

    echo Shortcuts
    echo "docs   : google docs"
    echo "gpt    : web chatgpt"
    echo "drive  : google drive"
    echo "classroom: google classroom"
    echo "github : github"
    echo "yt     : youtube"
    echo "figma  : figma"
    echo "9rd    : 9router dashboard"

    echo ""

    echo "Docker Alias"
    echo "dps    : docker ps"
    echo "dcu    : sudo docker compose up"
    echo "dcd    : sudo docker compose down"
    echo "dcr    : sudo docker compose restart"
    echo "dcb    : sudo docker compose build"
    echo "dcud   : sudo docker compose up -d"
    echo "dcudb  : sudo docker compose up -d --build"
    echo "dl     : docker logs -f"
    echo "di     : docker images"
end
