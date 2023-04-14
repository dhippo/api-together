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
