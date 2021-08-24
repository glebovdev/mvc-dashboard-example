<?php

namespace Core;

use Core\Database\Database;
use Core\Exceptions\CommonDatabaseException;
use Core\Interfaces\DatabaseInterface;
use Core\Interfaces\RequestInterface;
use Core\Interfaces\ResponseInterface;
use Core\Interfaces\RouterInterface;

/**
 * Application bootstrap class
 */
class App
{
    /**
     * @var App Application instance
     */
    public static App $instance;

    /**
     * Request class instance
     * @var RequestInterface|Request
     */
    private RequestInterface $request;

    /**
     * Response class instance
     * @var ResponseInterface|Response
     */
    private ResponseInterface $response;

    /**
     * Router class instance
     * @var RouterInterface|Router
     */
    private RouterInterface $router;

    /**
     * Database class instance
     * @var DatabaseInterface|null
     */
    private ?DatabaseInterface $db;

    public function __construct()
    {
        $this->request = new Request();
        $this->response = new Response();
        $this->router = new Router($this->request, $this->response);

        $this->db = $this->initDatabase();

        self::$instance = $this;
    }

    /**
     * Database initialization
     * @return DatabaseInterface|null
     * @throws \Exception
     */
    private function initDatabase(): ?DatabaseInterface
    {
        $driverName = $_ENV['DB_CONNECTION'];

        if (!empty($driverName)) {
            $databaseConfig = $this->prepareDatabaseConfig($driverName);
            return new Database($driverName, $databaseConfig);
        }

        return null;
    }

    /**
     * Get database config based on driver information from config
     * @param $databaseDriver
     * @return array
     */
    private function prepareDatabaseConfig($databaseDriver): array
    {
        return Config::get('database.connections.' . $databaseDriver);
    }

    /**
     * Get Database instance if exists one
     * @return DatabaseInterface|\Exception
     * @throws \Exception
     */
    public function getDb(): DatabaseInterface|\Exception
    {
        if (is_null($this->db)) {
            throw new CommonDatabaseException('No database available');
        }

        return $this->db;
    }

    /**
     * Run the app by running router's resolve method
     * @throws \Exception
     */
    public function run(): void
    {
        $this->router->resolve();
    }
}
