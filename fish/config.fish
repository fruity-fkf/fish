#########################
##variables
########################
set EDITOR vim
set fish_greeting 

##################
#####path
#################

fish_add_path ~/.local/bin
#fish_add_path ~/.doom.d
fish_add_path ~/usr/local/bin
##########################################
###########     aliases     ##############
#########################################
#alias nvim='lvim'
#alias emacs='emacsclient -c -a 'emacs''
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias mkex='chmod +x'
alias smi='sudo make install'
alias gitc='git clone'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias stx="startx"
alias pm="sudo pacman"
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

## Useful aliases
# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias ip="ip -color"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'


# Get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


#idk
alias apt='man pacman'
alias please='sudo'
alias tb='nc termbin.com 9999'

########################################
########################################

##############################################
############startup#######################
#############################################
fish_vi_key_bindings
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

