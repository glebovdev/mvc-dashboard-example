<?php

/**
 * Common app configuration
 */

return [
    'errors' => [
        'display_errors' => $_ENV['DISPLAY_ERRORS'] ?? 1,
        'display_startup_errors' => $_ENV['DISPLAY_STARTUP_ERRORS'] ?? 1,
        'error_level' => E_ALL,
    ],
];
