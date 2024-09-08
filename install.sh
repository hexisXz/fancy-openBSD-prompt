#!/bin/sh 

echo "would you like to install eza (better fancy ls) and duf (a better fancy df) (y/n)"

read i

if [ "$i" == "y" ]; then 
	echo "installing..."
	doas pkg_add duf && doas pkg_add rust && doas pkg_add eza && cargo install zoxide && doas cp ~/.cargo/bin/zoxide /usr/local/bin
	git clone https://github.com/hexisXz/fancy-openBSD-prompt.git && cd fancy-openBSD-prompt && mkdir ~/.config/fancyOBSD/ && cp ./fancyOBSD/fancy-ksh.ksh ~/.config/fancyOBSD/ && mv ~/.kshrc ~/.kshrc-old ; cp ./.kshrc ~/ 	
else 
	echo "installing..."
	doas pkg_add rust && cargo install zoxide && doas cp ~/.cargo/bin/zoxide /usr/local/bin
	git clone https://github.com/hexisXz/fancy-openBSD-prompt.git && cd fancy-openBSD-prompt && mkdir ~/.config/fancyOBSD/ && cp ./fancyOBSD/fancy-ksh.ksh ~/.config/fancyOBSD/ && mv ~/.kshrc ~/.kshrc-old ; cp ./.kshrc-no-cool-tools ~/.kshrc 

fi
