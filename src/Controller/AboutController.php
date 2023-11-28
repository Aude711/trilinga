<?php

namespace App\Controller;

class AboutController extends AbstractController
{
    /**
     * List level
     */
    public function index(): string
    {
        return $this->twig->render('about.html.twig');
    }
}
