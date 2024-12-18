#alias spot='~/.config/spotifyd/spotify.sh'



# Python


alias mvenv="python -m venv"
alias apy="source bin/activate.fish"


# TMUX (Terminal Multiplexer)

alias tm="tmux new -s sh"
alias ta="tmux attach"

alias zj="zellij" # Tmux alternative which is less customizable but more user friendly



# Compression

alias tarnow='tar -acf '
alias untar='tar -xvf '


# Replace ls with exa
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons' # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons' # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -E '^\.'" # show only dotfiles
alias ip="ip -color"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'


# Get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#idk
alias please='sudo'
alias tb='nc termbin.com 9999'
alias checknet='ping google.com'


#fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'
#youtube download
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "




# MISC (most of the aliases tbh 😭 )

alias vfd="fd -t f -H  -E .git | fzf-tmux -r 110 --reverse  --preview 'bat {} --color always' | xargs nvim"
alias hff="fd -t f -H  -E .git | fzf-tmux -r 110 --reverse  --preview 'bat {} --color always' | xargs hx"
alias hxx="~/.config/fish/helix-recent.sh"
alias jarr="java -jar"
alias walmenu="/bin/ls | sxiv -tfio | xargs wal -i "
alias virtnet="sudo virsh net-start default"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias mkex='chmod +x'
alias smi='sudo make install'
alias gitc='git clone'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias stx="startx"
alias pm="sudo pacman"
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
