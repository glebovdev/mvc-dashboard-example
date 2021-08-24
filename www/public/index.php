<?php

use Core\Exceptions\CommonException;

define('ROOT_PATH', dirname(__DIR__) . DIRECTORY_SEPARATOR);
define('APP_PATH', ROOT_PATH . 'app' . DIRECTORY_SEPARATOR);

// Autoloader
require_once '../vendor/autoload.php';

use Core\{Config, App};

Config::init();

// Common Setup
ini_set('display_errors', Config::get('common.errors.display_errors'));
ini_set('display_startup_errors', Config::get('common.errors.display_startup_errors'));
error_reporting(Config::get('common.errors.error_level'));

set_exception_handler(array(CommonException::class, 'render'));

/**
 * Start the app
 */
$app = new App();
$app->run();
