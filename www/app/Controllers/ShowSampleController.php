<?php

namespace App\Controllers;

use Core\Controller;
use Core\View;

/**
 * Sample page controller
 */
final class ShowSampleController extends Controller
{
    public function __invoke()
    {
        View::render('sample');
    }
}
