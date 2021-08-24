<?php

namespace Core;

/**
 * Main view rendering logic
 */
class View
{
    public const VIEW_PATH = APP_PATH . 'Views' . DIRECTORY_SEPARATOR;

    /**
     * Render view with arguments by its name
     * @param string $viewName
     * @param array $args
     * @return bool|string
     * @throws \Exception
     */
    public static function render(string $viewName, array $args = [])
    {
        $viewFile = self::VIEW_PATH . $viewName . '.php';

        return self::evaluate($viewFile, $args);
    }

    /**
     * Include view file, pass arguments and return buffer
     * @param string $file
     * @param array $data
     * @return bool|string
     */
    protected static function evaluate(string $file, array $data = []): bool|string
    {
        ob_start(fn($buffer, $phase) => self::extendView($buffer, $data));

        extract($data, EXTR_SKIP);

        try {
            include_once $file;
        } catch (\Exception $e) {
            ob_end_clean();
            throw $e;
        }

        return ob_end_flush();
    }

    /**
     * Render parent view if needed
     * @param string $content
     * @param array $data
     * @return string
     */
    protected static function extendView(string $content, array $data = []): string
    {
        if (!preg_match('/@extends\((?<file>.*)\)/i', $content, $matches)) {
            return $content;
        }

        $parentViewFileName = self::VIEW_PATH . $matches['file'] . '.php';

        // Remove @@extends_* from content
        $cleanedContent = str_replace($matches[0], '', $content);

        extract($data, EXTR_SKIP);
        include_once $parentViewFileName;

        /**
         * Since it's impossible to use ob_end_clean(), ob_end_flush(), ob_clean(), ob_flush() and ob_start()
         * functions inside callback, it's necessary to replace original buffer in result buffer
         */
        $parentViewContent = str_replace($content, '', ob_get_contents());

        return preg_replace('/{{\s*content\s*}}/i', $cleanedContent, $parentViewContent);
    }
}
