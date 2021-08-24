<?php

namespace App\Controllers;

use App\Models\Order;
use Core\Controller;
use Core\Interfaces\RequestInterface;
use Core\View;

/**
 * Show all orders controller
 */
class ShowOrdersController extends Controller
{
    public function __invoke(RequestInterface $request)
    {
        $orders = (new Order())->getOrdersWithCoutriesAndCustomers();
        View::render('orders', get_defined_vars());
    }
}
