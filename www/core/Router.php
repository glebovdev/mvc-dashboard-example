<?php

namespace Core;

use Core\Exceptions\{PageNotFountException, InvalidActionException};
use Core\Interfaces\RequestInterface;
use Core\Interfaces\ResponseInterface;
use Core\Interfaces\RouterInterface;

/**
 * Global Routing
 */
class Router implements RouterInterface
{
    /**
     * Array with all routes
     * @var array
     */
    private static array $routes = [];

    public function __construct(
        protected RequestInterface $request,
        protected ResponseInterface $response,
    ) {
    }

    /**
     * Set route accessible only with GET method
     * @param string $uri
     * @param string|callable|null $action
     */
    public static function get(string $uri, string|callable|null $action = null): void
    {
        self::addRoute(RequestInterface::METHOD_GET, $uri, $action);
    }

    /**
     *  Set route accessible only with POST method
     * @param string $uri
     * @param string|callable|null $action
     */
    public static function post(string $uri, string|callable|null $action = null): void
    {
        self::addRoute(RequestInterface::METHOD_POST, $uri, $action);
    }

    public static function addRoute($method, $uri, $action): void
    {
        self::$routes[$method][$uri] = $action;
    }

    /**
     * Assosiate route with action and run the action
     * @return mixed
     * @throws \Exception
     */
    public function resolve(): mixed
    {
        $path = $this->request->getPath();
        $method = $this->request->getRequestMethod();
        $action = self::$routes[$method][$path] ?? false;

        if (false === $action) {
            $this->response->setResponseCode(404);
            throw new PageNotFountException('Page not found');
        }

        if ($action instanceof \Closure) {
            return $action->__invoke();
        }

        if (is_string($action) && class_exists($action)) {
            return (new $action())->__invoke($this->request);
        }

        return throw new InvalidActionException('Invalid action for route ' . $path);
    }
}
