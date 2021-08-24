<?php

namespace Core\Database;

use Core\Exceptions\CommonDatabaseException;

abstract class AbstractDriver
{
    private static \PDO $dbh;

    public function __construct(array $config)
    {
        $connectionParams = static::prepareConnectionParams($config);

        try {
            self::$dbh = new \PDO(...$connectionParams);
            self::$dbh->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            self::$dbh->setAttribute(\PDO::ATTR_DEFAULT_FETCH_MODE, \PDO::FETCH_OBJ);
        } catch (\PDOException $e) {
            throw new CommonDatabaseException($e->getMessage());
        }
    }

    public static function getDatabaseConnection(): \PDO
    {
        return self::$dbh;
    }

    /**
     * Prepare driver specific database configuration
     * @param array $array
     * @return array
     */
    abstract protected static function prepareConnectionParams(array $array): array;
}
