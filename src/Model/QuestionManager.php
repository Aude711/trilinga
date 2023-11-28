<?php

namespace App\Model;

//require_once 'db.php';

use PDO;

class QuestionManager extends AbstractManager
{
    public const TABLE = 'question';

    public function selectQuizByLevelAndLanguage(int $levelId, int $languageId): array
    {

        $statement = $this->pdo->prepare("SELECT q.id, q.entitled, a.content, a.is_true, a.url
        FROM (
            SELECT * FROM question
            WHERE level_id = :level_id AND language_id = :language_id
            ORDER BY RAND()
            LIMIT 10
        ) AS q
        JOIN answer AS a ON q.id = a.question_id");

        $statement->bindValue(':level_id', $levelId, PDO::PARAM_INT);
        $statement->bindValue(':language_id', $languageId, PDO::PARAM_INT);

         $statement->execute();
         return $statement->fetchAll();
    }

    public function insertQuestion(array $question): int
    {
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " (`entitled`, `language_id`, `level_id` ) 
        VALUES (:entitled, :language_id, :level_id)");
        $statement->bindValue('entitled', $question['entitled'], PDO::PARAM_STR);
        $statement->bindValue('language_id', $question['language'], PDO::PARAM_INT);
        $statement->bindValue('level_id', $question['level'], PDO::PARAM_INT);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }
}
