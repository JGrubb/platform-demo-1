<?php

require __DIR__ .'/../vendor/autoload.php';

$config = new \Platformsh\ConfigReader\Config();

// You can check for any particular value being available (recommended):


// Or you can check that any configuration is available at all:
if ($config->isAvailable()) {
    var_dump($config->project);
    var_dump($config->application_name);
    print_r($config->routes);
}
