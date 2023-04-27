<?php


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
    $result = $conn->query("SELECT * FROM activities WHERE id = $activityId");

    var_dump("vardump de result");
    var_dump($result);

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
    $result = $conn->query("SELECT $question_type FROM activities WHERE id = $idActivity");

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        return $row[$question_type];
    } else {
        return null;
    }
}
