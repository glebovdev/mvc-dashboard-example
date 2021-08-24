<?php

namespace App\Models;

use Core\Model;

/**
 * Todo
 */
class Product extends Model
{
    public function getTableName(): string
    {
        return 'products';
    }

    public function getAttributes(): array
    {
        return [];
    }
}
