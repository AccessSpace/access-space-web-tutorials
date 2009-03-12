<?php

  function get_user_list()
  {
    return array(
      array(
        'id'    => 1002,
        'name'  => 'Martyn Eggleton',
        'email' => 'martyn@junk.com',
        'banned'=> false,
        ),
      array(
        'id'    => 1004,
        'name'  => 'Jake Harries',
        'email' => 'jake@junk.com',
        'banned'=> false,
        ),
      array(
        'id'    => 1001,
        'name'  => 'James Wallbank',
        'email' => 'james@junk.com',
        'banned'=> true,
        ),
      );
  }
