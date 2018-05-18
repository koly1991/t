#!/usr/bin/zsh
if [ ! -z $1 ]; then
	HOME=$(mktemp -d)
	git config user.email $1
	git config user.name x
	if ! chromium $(cat pdfs.list) /tmp/main.pdf &> /dev/null ; then
		chromium-browser $(cat pdfs.list) /tmp/main.pdf &> /dev/null
	fi &
	screen 
fi
