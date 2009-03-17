#!/bin/sh
#   1. If public_html does not exist this :-
#         1. creates a public_html for the current user with a .htaccess containing the users name
#         2. creates a index.php which redirects to tutorials/index.php which lists what is available 
#   2. if setwebpermissions.sh does not exist copy them in to ~
#   3. SVN Checkout the tutorials folder
#   4. Runs setpermissionsforhour.sh 
#   5. Set up At commands so that setpermissionsforhour.sh is run at 2 minutes past the hour until the end of today. 

  if [ -d /home/$USER/public_html ] 
  then
    echo "public_html exists"
  else
    mkdir /home/$USER/public_html
  fi

  if [ -f /home/$USER/public_html/index.html ] || [ -f /home/$USER/public_html/index.php ]
  then
    echo "Page Exists"
  else
    cat <<END > /home/$USER/public_html/index.php
<?php
  header('Location: http://caterpie/~'.get_current_user().'/tutorials/');
END
  fi

if [ -f ~/setwebpermissions.sh ] 
then
	echo "~/setwebpermissions.sh exists"
else
  cp /usr/share/setuplocalwebspace/setwebpermissions.sh ~/setwebpermissions.sh
  chown $USER:spacers ~/setwebpermissions.sh
  chmod a+x ~/setwebpermissions.sh
fi

if [ -d /home/$USER/public_html/tutorials ] 
then
	svn update http://access-space-web-tutorials.googlecode.com/svn/trunk/tutorials ~/public_html/tutorials
else
  svn checkout http://access-space-web-tutorials.googlecode.com/svn/trunk/tutorials ~/public_html/tutorials
fi

~/setwebpermissions.sh
at -f ~/setwebpermissions.sh 09:02 today
at -f ~/setwebpermissions.sh 10:02 today
at -f ~/setwebpermissions.sh 11:02 today
at -f ~/setwebpermissions.sh 12:02 today
at -f ~/setwebpermissions.sh 13:02 today
at -f ~/setwebpermissions.sh 14:02 today
at -f ~/setwebpermissions.sh 15:02 today
at -f ~/setwebpermissions.sh 16:02 today
at -f ~/setwebpermissions.sh 17:02 today
at -f ~/setwebpermissions.sh 18:02 today
at -f ~/setwebpermissions.sh 19:02 today


firefox "http://caterpie/~$USER/"
