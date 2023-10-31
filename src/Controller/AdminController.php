<?php

namespace App\Controller;

class AdminController extends AbstractController
{
    /**
     * List level
     */
    public function index(): string
    {
        return $this->twig->render('admin.html.twig');
    }

    /**
     * Add a new item
     */
    public function add(): ?string
    {
        return $this->twig->render('Item/add.html.twig');
    }

    public function edit(): ?string
    {
        return $this->twig->render('Item/edit.html.twig');
    }
}
