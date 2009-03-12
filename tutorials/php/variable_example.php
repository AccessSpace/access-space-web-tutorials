<?php
  
  $sString = "Hello World!";
  
  $iInt = 1231;
  
  $fFloat = 0.1222234;
  
  require('exampledata.php');
  $aUserList = get_user_list();
?>
<h1><?=$sString;?></h1>
<p>$iInt=<?=$iInt;?></p>
<p>$fFloat=<?=$fFloat;?></p>
<p>$aUserList  =<pre><?=var_export($aUserList , TRUE);?></pre></p>
  
