<?php

$pageTitle = "Letöltések";

$query = "SELECT * FROM `torrentek`";
$torrentek = $db->query($query);
if ($db->errno) {
  die($db->error);
}

