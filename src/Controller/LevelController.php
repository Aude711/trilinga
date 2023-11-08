<?php

namespace App\Controller;

use App\Model\LevelManager;

class LevelController extends AbstractController
{
    /**
     * List level
     */
    public function index(string $language): string
    {
        setcookie('language', $language);

        return $this->twig->render('level.html.twig', ['language' => $language]);
    }
}
