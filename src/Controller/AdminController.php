<?php

namespace App\Controller;

use App\Model\LanguageManager;
use App\Model\LevelManager;
use App\Model\AnswerManager;
use App\Model\QuestionManager;

class AdminController extends AbstractController
{
    public function index(): string
    {
        return $this->twig->render('admin.html.twig');
    }

    public function createQuiz()
    {
        $errors = [];


        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $data = array_map("trim", $_POST);

            if (empty($data['entitled'])) {
                $errors[] = "La question est obligatoire";
            }
            if (empty($data['trueContent'])) {
                $errors[] = 'Les réponses sont obligatoires';
            }
            if (empty($data['falseContent1'])) {
                $errors[] = 'Les réponses sont obligatoires';
            }
            if (empty($data['falseContent2'])) {
                $errors[] = 'Les réponses sont obligatoires';
            }
            if (empty($data['language'])) {
                $errors[] = 'La langue est obligatoire';
            }
            if (empty($data['level'])) {
                $errors[] = 'Le niveau est obligatoire';
            }
            if (empty($errors)) {
                $questionManager = new QuestionManager();
                $questionId = $questionManager->insertQuestion($data);

                $answerManager = new AnswerManager();
                $answerManager->insertAnswer($data["trueContent"], true, $questionId);

                $answerManager = new AnswerManager();
                $answerManager->insertAnswer($data["falseContent1"], false, $questionId);

                $answerManager = new AnswerManager();
                $answerManager->insertAnswer($data["falseContent2"], false, $questionId);

                header("Location: /admin/add ");
            }
            return $this->twig->render('Item/add.html.twig', ['errors' => $errors]);
        }

        $languageManager = new LanguageManager();
        $languages = $languageManager->selectAll();

        $levelManager = new LevelManager();
        $levels = $levelManager->selectAll();

        return $this->twig->render('Item/add.html.twig', ['languages' => $languages, 'levels' => $levels]);
    }

    public function showContent(): string
    {
        return $this->twig->render('Item/contenu.html.twig');
    }

    public function edit(): ?string
    {
        return $this->twig->render('Item/edit.html.twig');
    }
}
