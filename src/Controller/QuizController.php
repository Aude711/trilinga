<?php

namespace App\Controller;

class QuizController extends AbstractController
{
    /**
     * List level
     */
    public function index(): string
    {


        return $this->twig->render('quiz.html.twig');
    }
}
