<?php

namespace App\Controller;

use Twig\Environment;
use Twig\Extension\DebugExtension;
use Twig\Loader\FilesystemLoader;

/**
 * Initialized some Controller common features (Twig...)
 */
abstract class AbstractController
{
    protected Environment $twig;
    protected int|false $language;
    protected int|false $level;

    public function __construct()
    {
        $loader = new FilesystemLoader(APP_VIEW_PATH);
        $this->twig = new Environment(
            $loader,
            [
                'cache' => false,
                'debug' => true,
            ]
        );
        $this->twig->addExtension(new DebugExtension());

        $this->language = isset($_COOKIE['language']) ? $_COOKIE['language'] : false;
        $this->twig->addGlobal('language', $this->language);

        $this->level = isset($_COOKIE['level']) ? $_COOKIE['level'] : false;
        $this->twig->addGlobal('level', $this->level);
    }
}
