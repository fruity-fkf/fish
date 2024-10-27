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
fish_add_path ~/.cargo/bin
##########################################
###########     aliases     ##############
#########################################
source ~/.config/fish/alias.fish
source ~/.config/fish/nvim_versions.fish
########################################
########################################

##############################################
############startup#######################
#############################################
fish_vi_key_bindings
zoxide init --cmd cd fish | source
#neofetch
fish_add_path /home/fkf/.spicetify


function starship_transient_prompt_func
  starship module character
end
starship init fish | source
#enable_transience
