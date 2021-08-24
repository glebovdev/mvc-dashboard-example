<?php

use Core\Router;
use App\Controllers\{ShowSampleController,
    ShowDashboardController,
    ShowCustomersController,
    ShowOrdersController};

Router::get('/', ShowDashboardController::class);

Router::get('/customers', ShowCustomersController::class);

Router::get('/orders', ShowOrdersController::class);

Router::get('/sample', ShowSampleController::class);

//Router::get('/faker', App\Controllers\SaveFakeDataController::class);

Router::get('/sample-closure-page', static function () {
    echo 'Sample call from Closure';
});
