<html>
  <body>
    <h1>Welcome <?=get_current_user(); ?></h1>
    <p>This is your first page web on the Access Space system.</p>
	<h2>Where and What</h2>
<p>
    This is running on our Apache2 Server caterpie, using an html file stored in your home directory.<br>
    We have created you a public_html directory and changed its permssions 
	(and those of your home folder so that it is accessible to the web server and thus all the browsers 
	within Access Space.
    <br>
    We have also created this file /home/<?=get_current_user(); ?>/public_html/tutorials/index.php and /home/<?=get_current_user(); ?>/public_html/index.php which redirects here, feel free to edit it and get creative.
    </p>
<h2>Security Issues</h2>
    <p>For your security we secure your directories once an hour meaning no one else can see your files. 
	<br>
	Because of this you will need to run this script every hour or so when you get permission denied messages.</p>
<h2>Next Steps</h2>
<p>
<ul>
<li>Try looking at our course on html <a target="blank" href="http://knowhow.access-space.org/wiki/doku.php?id=courses:html_intro">
here</a></li>
<li>If you are interested in php, test our set up <a target="blank" href="phpinfo.php">here</a></li>
<li>Any requests for additional facilities, features or languages please pass to <a mailto="martyn@access-space.org">Martyn</a>.</li> 
</ul>
</p>

  </body>
<html>
