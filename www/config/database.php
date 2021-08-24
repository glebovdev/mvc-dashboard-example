<?php

/**
 * Database configuration
 */

return [
    'connections' => [
        'mysql' => [
            'host' => $_ENV['DB_HOST'] ?? 'mariadb',
            'port' => $_ENV['DB_PORT'] ?? 3306,
            'database' => $_ENV['DB_DATABASE'] ?? 'default',
            'username' => $_ENV['DB_USERNAME'] ?? 'default',
            'password' => $_ENV['DB_PASSWORD'] ?? 'secret',
            'charset' => 'utf8'
        ],
        'sqlite' => [
            'database' => $_ENV['DB_DATABASE'] ?? '',
        ],
    ],
];
