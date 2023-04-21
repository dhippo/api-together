<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require_once "config.php"; 
require_once "functions.php";

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case "allInfo":
        if (isset($_GET['nameActivity'])) {
            $nameActivity = $_GET['nameActivity'];
            $idActivity = getActivityIdByNameTitle($nameActivity);

            if ($idActivity !== null) {
                $results = getAllInfoByActivityId($idActivity);
                if (count($results) > 0) {
                    foreach ($results as $result) {
                        echo "Nom de l'activité: " . $result["title"] . "\n";
                        echo "Description: " . $result["description"] . "\n";
                        echo "Durée: " . $result["duration"] . "\n";
                        echo "Prix: " . $result["price"] . "\n";
                        echo "Type d'activité: " . $result["types"] . "\n";
                        echo "Pourquoi choisir cette activité: " . $result["why"] . "\n";
                    }
                } else {
                    echo "Aucune information disponible pour cette activité qui existe \n";
                }
            }else {
                echo "TEST \n";
            }
        }
        break;
    case "specificInfo":
        if (isset($_GET['activity_type']) && isset($_GET['question_type'])) {
            $activity_type = $_GET['activity_type'];
            $question_type = $_GET['question_type'];
            $idActivity = getActivityIdByNameTitle($activity_type);

            if ($idActivity !== null) {
                $result = getSpecificInfoByActivityId($idActivity, $question_type);
                if ($result !== null) {
                    echo $result;
                } else {
                    echo "Aucune information disponible pour cette activité et cette colonne.\n";
                }
            } else {
                echo "Aucune activité trouvée avec ce nom.\n";
            }
        } else {
            echo "Erreur: Paramètres 'activity_type' et/ou 'question_type' manquants.";
        }
        break;

default:
        echo json_encode(["error" => "Invalid action"]);
}
