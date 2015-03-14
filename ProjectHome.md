Split in to sections
  1. "Set Up Local Web Space" scripts in the file structure for the package manager.
    1. setuplocalwebspace.sh
      1. If public\_html does not exist this :-
        1. creates a public\_html for the current user with a .htaccess containing the users name
        1. creates a index.php which redirects to tutorials/index.php which lists what is available
      1. if setpermissionsforhour.sh or setwebpermissions.sh do not exist copy them in to ~/scripts
      1. SVN Checkout the tutorials folder
      1. Runs setpermissionsforhour.sh
    1. setwebpermissions.sh
      1. sets the public\_html permissions to 755 (out of the box) and ~/ to 711
    1. setpermissionsforhour.sh
      1. Runs setwebpermissions.sh and sets itself to run at 6 minutes past the next hour.
  1. Package for installing a "Set Up Local Web Space" program on the Space Machines
  1. The tutorials them selves
    1. PHP
    1. possibly CMS from scratch