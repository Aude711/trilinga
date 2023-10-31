<?php

namespace App\Controller;

class AuthController extends AbstractController
{
    /**
     * List level
     */
    public function index(): string
    {
        return $this->twig->render('login.html.twig');
    }
}
