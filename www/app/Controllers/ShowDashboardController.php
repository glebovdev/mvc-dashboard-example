<?php

namespace App\Controllers;

use App\Models\Customer;
use App\Models\Order;
use Core\Interfaces\RequestInterface;
use Core\View;
use DateInterval;
use DatePeriod;
use DateTime;

/**
 * Show global dashboard
 */
final class ShowDashboardController
{
    public function __invoke(RequestInterface $request)
    {
        $today = new \DateTime();
        $defaultTo = $today->format('Y-m-d');
        $defaultFrom = $today->modify('-1 month')->format('Y-m-d');

        $fromDate = $request->get('from', $defaultFrom);
        $toDate = $request->get('to', $defaultTo);

        $order = new Order();
        $ordersQty = $order->getNumberOfOrdersForPeriod($fromDate, $toDate);
        $revenue = $order->getRevenueForPeriod($fromDate, $toDate);
        $ordersForPeriod = $order->getOrdersNumbersGroupedByDateForPeriod($fromDate, $toDate);

        $customer = new Customer();
        $customersQty = $customer->getNumberOfCustomersForPeriod($fromDate, $toDate);
        $customersForPeriod = $customer->getCustomersNumbersGroupedByDateForPeriod($fromDate, $toDate);

        // Create range of the dates for graph
        $period = new DatePeriod(
            new DateTime($fromDate),
            new DateInterval('P1D'),
            new DateTime($toDate)
        );

        $customerOrdersGraphData = [];
        foreach ($period as $value) {
            $date = $value->format('Y-m-d');

            $customerOrdersGraphData[] = [
                'x' => $date,
                'customers' => array_key_exists($date, $customersForPeriod) ? $customersForPeriod[$date] : 0,
                'orders' => array_key_exists($date, $ordersForPeriod) ? $ordersForPeriod[$date] : 0
            ];
        }

        View::render('dashboard', get_defined_vars());
    }
}
