<?php

define("DB_HOST", "localhost");
define("DB_PORT", 8889);
define("DB_USER", "root");
define("DB_PASS", "root");
define("DB_NAME", "stephaneb2");

function connect_to_db()
{
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME, DB_PORT);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}

function connect_to_db2()
{
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, 'together_db', DB_PORT);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}