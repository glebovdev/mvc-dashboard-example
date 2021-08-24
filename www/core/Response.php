<?php

namespace Core;

use Core\Interfaces\ResponseInterface;

/**
 * Global Response class
 * todo: PSR-7 implementation
 */
class Response implements ResponseInterface
{
    /**
     * Set custom http code
     * @param int $code
     */
    public function setResponseCode(int $code): void
    {
        http_response_code($code);
    }

    /**
     * Redirect to any location
     * @param string $url
     */
    public static function redirect(string $url): void
    {
        header('Location:' . $url);
        exit;
    }
}
