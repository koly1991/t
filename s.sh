#!/usr/bin/zsh
if ! chromium $(cat pdfs.list) /tmp/main.pdf &> /dev/null ; then
	chromium-browser $(cat pdfs.list) /tmp/main.pdf &> /dev/null
fi &
screen 
