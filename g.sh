#!/usr/bin/zsh
if [ ! -z $1 ] && [ ! -z $2 ]; then
	if git status | grep "nothing to commit, working tree clean"; then
		git add .
		git commit -m "autocommit of $(date)"
		git push $1:$2@github.com
	fi
else
	echo first argument is username, second one is password
fi
