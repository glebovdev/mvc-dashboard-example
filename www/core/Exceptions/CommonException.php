<?php

namespace Core\Exceptions;

use Core\View;
use Throwable;

class CommonException extends \Exception
{
    public static function render(\Exception $e)
    {
        View::render('common-error', get_defined_vars());
    }
}
