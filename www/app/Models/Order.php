<?php

namespace App\Models;

use Core\Model;

class Order extends Model
{
    /**
     * Get list of orders with countries and customers data
     * @return mixed
     */
    public function getOrdersWithCoutriesAndCustomers()
    {
        $sql = "SELECT o.id, c.name as country, CONCAT(cs.first_name,' ', cs.last_name) as customer, 
                       o.device, o.created_at
                FROM {$this->table()} as o 
                LEFT JOIN countries as c ON (o.country_id = c.id)
                LEFT JOIN customers as cs ON (o.customer_id = cs.id)
                ORDER BY o.created_at DESC";
        return $this->db->query($sql)->fetchAll();
    }

    /**
     * Get total number of orders made between specific dates
     * @param string|null $from
     * @param string|null $to
     * @return int|null
     */
    public function getNumberOfOrdersForPeriod(?string $from = null, ?string $to = null): ?int
    {
        if (!$from || !$to) {
            return 0;
        }

        $sql = "SELECT COUNT(*) as count
                FROM {$this->table()}
                WHERE (DATE(created_at) BETWEEN ? AND ?)";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([$from, $to]);

        return $stmt->fetch()->count;
    }

    /**
     * Get total revenue between specific dates
     * @param string|null $from
     * @param string|null $to
     * @return int|null
     */
    public function getRevenueForPeriod(?string $from, ?string $to): ?int
    {
        if (!$from || !$to) {
            return 0;
        }

        $sql = "SELECT SUM((op.quantity * op.price)) as total
                FROM orders_products as op
                LEFT JOIN {$this->table()} as o ON (o.id = op.order_id)
                WHERE (DATE(o.created_at) BETWEEN ? AND ?)";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([$from, $to]);

        return $stmt->fetch()->total;
    }

    /**
     * Get total number of orders made between specific dates
     * @param string|null $from
     * @param string|null $to
     * @return array|null
     */
    public function getOrdersNumbersGroupedByDateForPeriod(?string $from, ?string $to): array|null
    {
        if (!$from || !$to) {
            return [];
        }

        $sql = "SELECT count(id) as count, DATE(created_at) as date
                FROM {$this->table()}
                WHERE (DATE(created_at) BETWEEN ? AND ?)
                GROUP BY date";

        $stmt = $this->db->prepare($sql);


        if (false === $stmt->execute([$from, $to])) {
            return [];
        }

        $ordersData = [];
        foreach ($stmt->fetchAll() as $record) {
            $ordersData[$record->date] = $record->count;
        }

        return $ordersData;
    }

    public function getTableName(): string
    {
        return 'orders';
    }

    public function getAttributes(): array
    {
        return [];
    }
}
