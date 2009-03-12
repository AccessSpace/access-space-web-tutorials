<?php
  require_once('template.php');
  $sTemplateFolderPath = './templates/';
  
  $oTpl = & new Template('./greenandplain/', 'layout.tpl.php'); // this is the outer template
  //$oTpl = & new Template('./premiumseries/', 'layout.tpl.php'); // this is the outer template
  
  $oTpl->set('sTitle', 'User List');
  
  $oBody = & new Template($sTemplateFolderPath, 'user_list.tpl.php'); // This is the inner template
  
  /*
   * The get_user_list() function simply runs get data about users 
   * nothing fancy or complex going on here.
   */
  require_once('exampledata.php');
  $aUserList = get_user_list();
  $oBody->set('aUserList', $aUserList);
  
  $oTpl->set('sContent', $oBody);
  
  echo $oTpl->fetch();
