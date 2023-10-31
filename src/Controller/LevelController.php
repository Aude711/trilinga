<?php

namespace App\Controller;

use App\Model\LevelManager;

class LevelController extends AbstractController
{
    /**
     * List level
     */
    public function index(): string
    {


        return $this->twig->render('level.html.twig');
    }
}
