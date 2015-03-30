<?php

$pageTitle = "Fórum";




// Üzenetküldés feldolgozása:
if (isset($_POST['forumSubmit'])) {

    $name = $_POST['forumName'];
    $message = $_POST['forumMessage'];
    $date = date('Y-m-d H:i:s');

    $query = "insert into forum values (null, '$name', '$message', '$date')";
    $db->query($query);
    if ($db->errno) {
        die($db->error);
    }
}

// oldal tartalmának betöltése adatbázisból:

$query = "SELECT * FROM `forum` ";
$forum = $db->query($query);
if ($db->errno) {
    die($db->error);
}