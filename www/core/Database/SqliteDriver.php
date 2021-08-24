<?php

namespace Core\Database;

class SqliteDriver extends AbstractDriver
{
    protected static function prepareConnectionParams(array $config): array
    {
        return [
            'dsn' => 'sqlite:' . $config['database'],
        ];
    }
}
