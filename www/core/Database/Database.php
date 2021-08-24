<?php

namespace Core\Database;

use Core\Exceptions\CommonDatabaseException;
use Core\Interfaces\DatabaseInterface;

class Database implements DatabaseInterface
{
    protected $instance = null;

    /**
     * Initialize Database driver by its name if class exists
     * @param $connection
     * @param $config
     * @throws \Exception
     */
    public function __construct($connection, $config)
    {
        $driverName = ucfirst($connection);
        $driverFileName = __NAMESPACE__ . '\\' . $driverName . 'Driver';

        if (false === class_exists($driverFileName)) {
            throw new CommonDatabaseException(sprintf('No Database driver: %s', $driverName));
        }

        $this->instance = (new $driverFileName($config))::getDatabaseConnection();
    }

    public function getInstance()
    {
        return $this->instance;
    }

    /**
     * Wrapper for \PDO prepare() method
     * @param string $sql
     * @return mixed
     */
    public function prepare(string $sql)
    {
        return $this->getInstance()->prepare($sql);
    }

    /**
     * Wrapper for \PDO query method
     * @param string $sql
     * @return mixed
     */
    public function query(string $sql)
    {
        return $this->getInstance()->query($sql);
    }
}
