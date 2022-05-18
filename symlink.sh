#!/bin/fish

#########################################
# symlink.sh
# Symlinks dotfiles and .config directories
#########################################

set base_dir ~/git/loptop

set new_dotfiles $base_dir/dotfiles

set old_dotfiles_dir ~/old_dotfiles

set old_config_dir ~/old_config

# Make directories for existing files
mkdir -p ~/old_dotfiles_dir
mkdir -p ~/old_config_dir

# Symlink the new files
for file in $(ls $new_dotfiles)
	echo "Moving any existing .$file to $old_dotfiles_dir"
	mv ~/.$file $old_dotfiles_dir
	echo "Linking new .$file to ~"
	ln -s $new_dotfiles/$file ~/.$file
end
