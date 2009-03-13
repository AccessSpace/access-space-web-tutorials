#!/bin/sh
#   1. If public_html does not exist this :-
#         1. creates a public_html for the current user with a .htaccess containing the users name
#         2. creates a index.php which redirects to tutorials/index.php which lists what is available 
#   2. if setwebpermissions.sh does not exist copy them in to ~
#   3. SVN Checkout the tutorials folder
#   4. Runs setpermissionsforhour.sh 
cp /usr/share/setuplocalwebspace/setwebpermissions.sh ~/setwebpermissions.sh
chown $USER:$USER ~/setwebpermissions.sh
chmod a+x ~/setwebpermissions.sh
svn checkout http://access-space-web-tutorials.googlecode.com/svn/trunk/tutorials ~/public_html/tutorials
echo "Start" >> ~/timelog.txt
/usr/share/setuplocalwebspace/setpermissionsforhour.sh

