<?php

function get_all_questions()
{
    $conn = connect_to_db();
    $result = $conn->query("SELECT quest FROM testq");

    if ($result->num_rows > 0) {
        $questions = [];
        while ($row = $result->fetch_assoc()) {
            $questions[] = $row;
        }
        return $questions;
    } else {
        return [];
    }
}



function get_all_answers()
{
    $conn = connect_to_db();
    $result = $conn->query("SELECT rep FROM testq");

    if ($result->num_rows > 0) {
        $answers = [];
        while ($row = $result->fetch_assoc()) {
            $answers[] = $row;
        }
        return $answers;
    } else {
        return [];
    }
}

function search_questions($search_term)
{
    $conn = connect_to_db();
    $search_term = $conn->real_escape_string($search_term);
    $result = $conn->query("SELECT quest FROM testq WHERE quest LIKE '%$search_term%'");

    if ($result->num_rows > 0) {
        $questions = [];
        while ($row = $result->fetch_assoc()) {
            $questions[] = $row;
        }
        return $questions;
    } else {
        return [];
    }
}

function search_questions_answers_by_word($word)
{
    $conn = connect_to_db();
    $word = $conn->real_escape_string($word);
    $result = $conn->query("SELECT quest, rep FROM testq WHERE quest LIKE '%$word%' OR rep LIKE '%$word%'");

    if ($result->num_rows > 0) {
        $results = [];
        while ($row = $result->fetch_assoc()) {
            $results[] = $row;
        }
        return $results;
    } else {
        return [];
    }
}

/**

SELECT `title` FROM `activities` WHERE (`activities`.`title` = 'Escape Game') OR
idA	title
1	Escape Game
2	Participation à des événements caritatifs
3	Rallye découverte dune ville/dun quartier
4	Karaoké/Chorégraphie/Scénettes de théâtre
5	Activité Réalité Virtuelle
6	Création artistique (peinture, sculpture etc)
7	Compétition sportive
8	Apéro/Cocktail/Repas
9	Atelier culinaire
10	Tournoi Babyfoot/Ping pong ou autre
11	Jeux de société
12	Randonnée
13	Voyage/Weekend

 */

function getActivityIdByNameTitle($activityName)
{
    $id_by_name = [
        'escapegame' => 1,
        'evcaritatif' => 2,
        'rallye' => 3,
        'karaoke' => 4,
        'realitevirtuelle' => 5,
        'creationartistique' => 6,
        'competitionsportive' => 7,
        'apero' => 8,
        'atelierculinaire' => 9,
        'babyfoot' => 10,
        'jeuxdesociete' => 11,
        'randonnee' => 12,
        'voyage' => 13,
    ];

    if (array_key_exists($activityName, $id_by_name)) {
        return $id_by_name[$activityName];
    } else {
        return null;
    }
}


function getAllInfoByActivityId ($activityId)
{
    $conn = connect_to_db2();
    $result = $conn->query("SELECT * FROM activities WHERE idA = $activityId");

    if ($result->num_rows > 0) {
        $activities = [];
        while ($row = $result->fetch_assoc()) {
            $activities[] = $row;
        }
        return $activities;
    } else {
        return [];
    }
}

function getSpecificInfoByActivityId($idActivity, $question_type) {
    $conn = connect_to_db2();
    $result = $conn->query("SELECT $question_type FROM activities WHERE idA = $idActivity");

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row[$question_type];
    } else {
        return null;
    }
}
