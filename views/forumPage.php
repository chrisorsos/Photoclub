<?php include('includes/header.php'); ?>

<div id="content">
  <h2><?php echo $pageTitle; ?></h2>
  
  <?php
  while ($row=$forum->fetch_assoc()) {
      echo '<div class="bejegyzes"> ';
      echo '<div class="nev">'.$row['nev'].'</div>';
      echo '<div class="datum">'.$row['datum'].'</div>';
      echo '<div class="szoveg">'.$row['szoveg'].'</div>';      
      echo '</div>';
  }
  ?>
  
  <h3>Új bejegyzés:</h3>
  <form name="forumForm" method="post">
    <label>Név:</label>
    <br>
    <input type="text" name="forumName">
    <br>
    
 
    <label>Üzenet:</label>
    <br>
    <textarea name="forumMessage"></textarea>
    <br>
    <input type="submit" name="forumSubmit">
  </form>
  <br>
  
</div>

<?php
include('includes/footer.php');