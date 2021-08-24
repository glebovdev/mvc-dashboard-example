<?php

namespace Core;

use Core\Interfaces\DatabaseInterface;

/**
 * Common model
 */
abstract class Model
{
    protected DatabaseInterface $db;
    protected string $tableName;

    /**
     * Get Database instance
     * @throws \Exception
     */
    public function __construct()
    {
        $this->db = App::$instance->getDb();

        $this->tableName = $this->getTableName();
    }

    /**
     * Common method for any child model
     * @return mixed
     */
    public function all()
    {
        $sql = "SELECT * FROM  {$this->table()}";
        return $this->db->query($sql)->fetchAll();
    }

    /**
     * Get table name for specific model
     * @return string
     */
    protected function table(): string
    {
        return $this->tableName;
    }

    abstract public function getTableName(): string;

    abstract public function getAttributes(): array;
}
