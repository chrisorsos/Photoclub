<?php include('includes/header.php'); ?>

<div id="content" class="content-front">
  <h2>Kezdőlap</h2>
  <?php
  foreach ($news as $item) {
    echo '<div class="news">';
    echo '<div class="title">'.$item['title'].'</div>';
    echo '<div class="text">'.$item['text'].'</div>';
    echo '<div class="date">'.$item['date'].'</div>';
    echo '</div>';
  }
  ?>
</div>

<?php
include('includes/footer.php');
