<?php
/**
 * Created by PhpStorm.
 * User: grubb
 * Date: 11/18/16
 * Time: 9:19 AM
 */

require_once "bootstrap.php";

return \Doctrine\ORM\Tools\Console\ConsoleRunner::createHelperSet($entityManager);