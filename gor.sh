#! /bin/sh

######################
#
# -c : commit
# -t : test
#
######################

blog_path=~/typeof.me

case $1 in
-c)
	cd $blog_path/compiled

	if [ `git ls-files --other --exclude-standard --directory | egrep -v '/$'` ];
	then
		git add .
		git commit -a -m "updated"
		git push
	else
		echo "Nothing to commit."
	fi
	;;
	
-t)
	cd $blog_path
	gor compile
	gor http
	;;

*)
	echo "Usage: $0 <options>"
	;;
esac


