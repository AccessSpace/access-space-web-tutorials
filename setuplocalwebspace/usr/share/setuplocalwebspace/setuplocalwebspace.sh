#!/bin/sh
#   1. If public_html does not exist this :-
#         1. creates a public_html for the current user with a .htaccess containing the users name
#         2. creates a index.php which redirects to tutorials/index.php which lists what is available 
#   2. if setwebpermissions.sh does not exist copy them in to ~
#   3. SVN Checkout the tutorials folder
#   4. Runs setpermissionsforhour.sh 


if [ -d /home/$USER/public_html ] 
then
	echo "public_html exists"
else
	mkdir /home/$USER/public_html
  if [ -f /home/$USER/public_html/index.html ] || [ -f /home/$USER/public_html/index.php ]
  then
    echo "Page Exists"
  else
    cat <<END > /home/$USER/public_html/index.php
<?php
  header('Location: http://caterpie/~'.get_current_user().'/');
END
fi

if [ -f ~/setwebpermissions.sh ] 
then
	echo "~/setwebpermissions.sh exists"
else
  cp /usr/share/setuplocalwebspace/setwebpermissions.sh ~/setwebpermissions.sh
  chown $USER:$USER ~/setwebpermissions.sh
  chmod a+x ~/setwebpermissions.sh
fi

if [ -d /home/$USER/public_html/tutorials ] 
then
	echo "tutorials exists"
else
  svn checkout http://access-space-web-tutorials.googlecode.com/svn/trunk/tutorials ~/public_html/tutorials
fi

/usr/share/setuplocalwebspace/setpermissionsforhour.sh

