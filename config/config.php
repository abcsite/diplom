<?php

Config::set('site_name','My Site');

Config::set('languages', array('en','fr'));

// Routes. Route name => method prefix
Config::set('routes', array(
    'default' => '',
    'admin' => 'admin_'
));

Config::set('default_route', 'default');
Config::set('default_language', 'en');
Config::set('default_controller', 'home');
Config::set('default_action', 'index');

Config::set('db.host', 'localhost');
Config::set('db.user', 'root');
Config::set('db.password', '');
Config::set('db.db_name', 'diplom');

Config::set('salt', 'jd7sj3sdkd964he7e');

Config::set('salt', 'jd7sj3sdkd964he7e');






