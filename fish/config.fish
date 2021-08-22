export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/home/fkf/.local/bin"
export PATH="$PATH:/home/fkf/bin"
export PATH="$PATH:/home/fkf/.doom.d"
export PATH="$PATH:/var/lib/snapd/snap/bin"
#####################################################################################################
###########     aliases     ###########################################################################
#######################################################################################################

alias mkex='chmod +x'
alias smi='sudo make install'
alias neof='neofetch --source Downloads/distributorlogoarchlinux_103805.png'
alias els='exa -l --color=always --group-directories-first --icons'
alias la='exa -al --color=always --group-directories-first --icons'
alias l.='exa -a | rg "^\."'
alias gitc='git clone'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias stx="startx"
alias pm="sudo pacman"
alias cat="bat"
alias lmc="java -jar ~/mc/mc.jar"

#################################################################################################

################################################################################################



fish_vi_key_bindings
/home/fkf/scripts/cb-small

if status is-interactive
    # Commands to run in interactive sessions can go here
end



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/fkf/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

