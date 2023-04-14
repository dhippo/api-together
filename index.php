<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require_once "config.php"; 
require_once "functions.php";

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case "get_all_questions":
        echo json_encode(get_all_questions());
        break;
    case "get_all_answers":
        echo json_encode(get_all_answers());
        break;
    case "search_questions":
        $search_term = isset($_GET['search_term']) ? $_GET['search_term'] : '';
        echo json_encode(search_questions($search_term));
        break;
    default:
        echo json_encode(["error" => "Invalid action"]);
}
