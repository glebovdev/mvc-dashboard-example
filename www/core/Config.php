<?php

namespace Core;

use Dotenv\Dotenv;

/**
 * Configuration class
 */
class Config
{
    /**
     * @var array Config storage array
     */
    private static array $config = [];

    /**
     * Config initialization
     * @return array
     */
    public static function init(): array
    {
        self::loadEnv();
        self::loadConfigFiles();

        return self::get();
    }

    /**
     * Get specific configuration item by key or whole array
     * @param string|null $key
     * @return mixed
     */
    public static function get(?string $key = null): mixed
    {
        if (str_contains($key, '.')) {
            $array = self::$config;
            foreach (explode('.', $key) as $part) {
                $array = $array[$part] ?? [];
            }
            return $array;
        }

        return self::$config[$key] ?? self::$config;
    }

    /**
     * Load Dotenv class and .env configuration
     */
    private static function loadEnv(): void
    {
        Dotenv::createImmutable(ROOT_PATH)->load();
    }

    /**
     * Load every .php file from config directory into self::config array
     */
    private static function loadConfigFiles(): void
    {
        foreach (glob('../config/*.php') as $filename) {
            $name = pathinfo($filename)['filename'];
            self::$config[$name] = require $filename;
        }
    }
}
