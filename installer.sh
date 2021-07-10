#!/bin/bash

files() {
	cp vimrc $HOME/.vimrc
	mkdir  $HOME/Wallpapers
	cp *.jpg $HOME/Wallpapers
	sudo cp -R fonts/* /usr/share/fonts
	cp zshrc $HOME/.zshrc
	depends
}

packages() {
	echo "Intsalling packages"
	yay -S dunst rofi picom-ibhagwan-git polybar wget unzip feh python-pywal zsh
	files
}

depends() {
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	sh -c "$(curl -fsSL https://starship.rs/install.sh)"

	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

aur_helper() {
	AUR=$(ls /usr/bin | grep yay);
	if [ -z "$AUR" ];
	then 
	    echo "AUR Helper (yay) has not been found";
	else
	    echo "AUR Helper (yay) has been found"	
	    packages
	fi
}

aur_helper

