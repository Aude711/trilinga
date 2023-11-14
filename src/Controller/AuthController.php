<?php

namespace App\Controller;

use App\Model\AuthManager;

class AuthController extends AbstractController
{
    /**
     * List level
     */

    public function login(): string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $data = array_map('trim', $_POST);
            $data = array_map('htmlentities', $data);

            // TODO validations (length, format...)

            // if validation is ok, update and redirection
            $authManager = new AuthManager();
            $user = $authManager->selectOneByEmail($data['email']);

            if ($user && password_verify($data['password'], $user['password'])) {
                $_SESSION['user_id'] = $user['id'];
                header('Location: /admin');
                exit();
            }
        }
        return $this->twig->render('login.html.twig');
    }

    public function logout()
    {
        unset($_SESSION['user_id']);
        header('Location: /');
        exit();
    }
}
