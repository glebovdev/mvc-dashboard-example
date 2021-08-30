<?php

namespace App\Controllers;

use App\Models\Customer;
use Core\Controller;
use Core\Interfaces\RequestInterface;
use Core\View;

final class ShowCustomersController extends Controller
{
    public function __invoke(RequestInterface $request)
    {
        $customers = (new Customer())->all();

        View::render('customers', get_defined_vars());
    }
}
