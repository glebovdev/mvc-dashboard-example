<?php

namespace App\Models;

use Core\Model;

class Customer extends Model
{
    public const ID = 'id';
    public const LAST_NAME = 'last_name';
    public const FIRST_NAME = 'first_name';
    public const EMAIL = 'email';
    public const CREATED_AT = 'created_at';
    public const UPDATED_AT = 'updated_at';

    /**
     * Get number of customers between specific dates
     * @param string|null $from
     * @param string|null $to
     * @return int|null
     */
    public function getNumberOfCustomersForPeriod(?string $from = null, ?string $to = null): ?int
    {
        if (!$from || !$to) {
            return 0;
        }

        $sql = "SELECT COUNT(*) as count
                FROM {$this->table()}
                WHERE DATE(created_at) BETWEEN ? AND ?";

        $stmt = $this->db->prepare($sql);
        $stmt->execute([$from, $to]);

        return $stmt->fetch()->count;
    }

    /**
     * Get total number of customers registered between specific dates
     * @param string|null $from
     * @param string|null $to
     * @return array|null
     */
    public function getCustomersNumbersGroupedByDateForPeriod(?string $from, ?string $to): array|null
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

        $customersData = [];
        foreach ($stmt->fetchAll() as $record) {
            $customersData[$record->date] = $record->count;
        }

        return $customersData;
    }

    public function getTableName(): string
    {
        return 'customers';
    }

    public function getAttributes(): array
    {
        return [
            self::ID, self::LAST_NAME, self::FIRST_NAME, self::EMAIL, self::CREATED_AT, self::UPDATED_AT
        ];
    }
}
