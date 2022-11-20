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
alias nvim='lvim'
#alias emacs='emacsclient -c -a 'emacs''
alias mkex='chmod +x'
alias smi='sudo make install'
alias els='exa -l --color=always --group-directories-first --icons'
alias la='exa -al --color=always --group-directories-first --icons'
alias l.='exa -a | rg "^\."'
alias gitc='git clone'
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias stx="startx"
alias pm="sudo pacman"
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

