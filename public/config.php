require 'vendor/autoload.php';

$config = new \Platformsh\ConfigReader\Config();

// You can check for any particular value being available (recommended):
if (isset($config->relationships['database'][0])) {
    $database = $config->relationships['database'][0];

    // Now $database is an array representing a database service.
}

// Or you can check that any configuration is available at all:
if ($config->isAvailable()) {
    var_dump($config->project);
    var_dump($config->application_name);
    var_dump($config->relationships['database'][0]['host']);
}
