#########################
##variables
########################
set EDITOR vim
 function fish_greeting
   #pokemon-colorscripts -r
 end

##################
#####path
#################
# cat ~/.cache/wal/sequences
fish_add_path ~/.local/bin
fish_add_path ~/.bin
fish_add_path ~/.doom.d
fish_add_path ~/usr/local/bin
##########################################
###########     aliases     ##############
#########################################
source ~/.config/fish/alias.fish

########################################
########################################

##############################################
############startup#######################
#############################################
fish_vi_key_bindings
if status is-interactive
    # Commands to run in interactive sessions can go here
end
#neofetch
fish_add_path /home/fkf/.spicetify
