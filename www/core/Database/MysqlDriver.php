<?php

namespace Core\Database;

class MysqlDriver extends AbstractDriver
{
    protected static function prepareConnectionParams(array $config): array
    {
        $dsn = 'mysql:host=' . $config['host'] . '; 
                port=' . $config['port'] . '; 
                dbname=' . $config['database'] . '; 
                charset=' . $config['charset'];

        return [
            'dsn' => $dsn,
            'username' => $config['username'],
            'password' => $config['password'],
        ];
    }
}
