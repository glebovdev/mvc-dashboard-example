<?php

namespace Core;

use Core\Interfaces\RequestInterface;

/**
 * Request class
 * todo: add PSR-7 implementation
 */
class Request implements RequestInterface
{
    private array $uriParams = [];

    /**
     * Request body ($_GET or $_POST)
     * @var array|array[]
     */
    private array $body = [];

    public function __construct()
    {
        $this->parseUriParams();

        $this->body = $this->parseBody();
    }

    /**
     * Get uri path without ? sign
     * @return string
     */
    public function getPath(): string
    {
        $requestUri = rtrim($_SERVER['REQUEST_URI'], '/');
        $path = $requestUri ? filter_var($requestUri, FILTER_SANITIZE_URL) : '/';
        $questionMarkPosition = strpos($path, '?');

        if (false === $questionMarkPosition) {
            return $path;
        }

        return substr($path, 0, $questionMarkPosition);
    }

    public function getRequestMethod(): string
    {
        return strtoupper($_SERVER['REQUEST_METHOD']);
    }

    private function parseUriParams(): void
    {
        parse_str($_SERVER['QUERY_STRING'], $this->uriParams);
    }

    private function isGet(): bool
    {
        return $this->getRequestMethod() === self::METHOD_GET;
    }

    private function isPost(): bool
    {
        return $this->getRequestMethod() === self::METHOD_POST;
    }

    /**
     * Parse all data from $_GET and $_POST into storage array
     * @return array|array[]
     */
    private function parseBody(): array
    {
        $data = [self::METHOD_GET => [], self::METHOD_POST => []];

        if ($this->isGet()) {
            foreach ($_GET as $key => $value) {
                $data[self::METHOD_GET][$key] = filter_input(INPUT_GET, $key, FILTER_SANITIZE_SPECIAL_CHARS);
            }
        }

        if ($this->isPost()) {
            foreach ($_POST as $key => $value) {
                $data[self::METHOD_POST][$key] = filter_input(INPUT_POST, $key, FILTER_SANITIZE_SPECIAL_CHARS);
            }
        }

        return $data;
    }

    /**
     * Get request data storage array
     * @return array|array[]
     */
    private function getBody(): array
    {
        return $this->body;
    }

    /**
     * Retrieve value from $_GET by its name or set default value
     * @param $key
     * @param null $default
     * @return string|null
     */
    public function get($key, $default = null): ?string
    {
        $get = $this->getBody()[self::METHOD_GET];
        if (array_key_exists($key, $get)) {
            return $get[$key];
        }

        return $default;
    }

    /**
     * Retrieve value from $_POST by its name or set default value
     * @param $key
     * @param null $default
     * @return mixed
     */
    public function post($key, $default = null): mixed
    {
        $post = $this->getBody()[self::METHOD_POST];
        if (array_key_exists($key, $post)) {
            return $post[$key];
        }

        return $default;
    }
}
