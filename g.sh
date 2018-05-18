#!/usr/bin/zsh
if [ ! -z $1 ] && [ ! -z $2 ]; then
	if ! git status | grep "nothing to commit, working tree clean"; then
		git add .
		git commit -m "autocommit of $(date)"
		git push https://$1:$2@github.com/$1/$3
	fi
else
	echo first argument is username, second one is password, third is repo name
fi
