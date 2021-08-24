<?php

namespace Core\Interfaces;

interface RequestInterface
{
    public const METHOD_GET = 'GET';
    public const METHOD_POST = 'POST';
    public function getPath(): string;
    public function getRequestMethod(): string;
}
