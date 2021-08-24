<?php

namespace Core\Interfaces;

interface DatabaseInterface
{
    public function __construct($connection, $config);

    public function getInstance();

    public function prepare(string $sql);

    public function query(string $sql);
}
