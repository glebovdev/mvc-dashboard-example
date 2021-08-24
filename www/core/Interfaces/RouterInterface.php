<?php

namespace Core\Interfaces;

interface RouterInterface
{
    public static function get(string $uri, string|callable|null $callback = null): void;

    public static function post(string $uri, string|callable|null $callback = null): void;

    public static function addRoute($method, $uri, $callback): void;

    /**
     * @throws \Exception
     */
    public function resolve();
}
