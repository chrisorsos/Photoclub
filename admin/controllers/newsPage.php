<?php

$pageTitle = "Hírek rögzítése";
$found = array();


//rovatok kigyűjtése:
$query = "SELECT * FROM `tags`";
$result = $db->query($query);
if ($db->errno) {
	die($db->error);
}

$tags = array();
$c = 0;
while ($tagData = $result->fetch_array()) {
	$id = $tagData['id'];
	$tags[$id] = $tagData['description'];
	$c++;
}



// hír keresés form feldolgozása:
if (isset($_POST['searchSubmit'])) {
  
	$where = '';
	$newsTag = $_POST['tag'];
	if ($newsTag > 0) $where.= "tag=$newsTag";
	$newsTitle = $_POST['title'];
	if (!empty($newsTitle)) $where.= (!empty($where)) ? " AND title LIKE '%$newsTitle%'"  : "title LIKE '%$newsTitle%'";
	$newsText = $_POST['text'];
	if (!empty($newsText)) $where.= (!empty($where)) ? " AND `text` LIKE '%$newsText%'"  : "`text` LIKE '%$newsText%'";
	 
	$query = (!empty($where)) ? "SELECT * FROM `news` WHERE $where" : "SELECT * FROM `news` LIMIT 10";
	$found = $db->query($query);
	if ($db->errno) {
		die($db->error);
	}
	
	$_SESSION['sresult'] = array();
	$c = 0;
	while ($newsData = $found->fetch_array()) {
		$_SESSION['sresult'][$c]['tag'] = $newsData['tag'];
		$_SESSION['sresult'][$c]['title'] = $newsData['title'];
		$_SESSION['sresult'][$c]['text'] = $newsData['text'];
		$_SESSION['sresult'][$c]['date'] = $newsData['date'];
		$c++;
	}	
		
	header("Location: $HOST/admin/?q=hirek");
	exit;
}

// hír rögzítése form feldolgozása:
if (isset($_POST['newsSubmit'])) {
  
	$newsTitle = $_POST['title'];
	$newsLead = $_POST['lead'];
	$newsText = $_POST['text'];
	$newsDate = $_POST['date'];
	$newsTag = $_POST['tag'];
	
	
	// db-be írás:
	$query = "INSERT INTO news (title, lead, text, date, tag) VALUES ('$newsTitle', '$newsLead', '$newsText', '$newsDate', '$newsTag');";
	$result = $db->query($query);
	if ($db->errno) {
		die($db->error);
	}
	
	$_SESSION['msg'] = 'Hír rögzítve.';
		
	header("Location: $HOST/admin/?q=hirek");
	exit;
}


?>