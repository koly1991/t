#!/bin/bash
if [ ! -z $1 ]; then
	dir=$(mktemp -d)
	HOME=$dir
	git config user.email $1
	git config user.name x
	if ! chromium $(cat pdfs.list) /tmp/main.pdf &> /dev/null ; then
		chromium-browser $(cat pdfs.list) /tmp/main.pdf &> /dev/null
	fi &
	screen 
	rm -rf $dir
fi
