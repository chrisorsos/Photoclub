<?php include('includes/header.php'); ?>

<div id="content" class="content-front">
    <style type="text/css">

        th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }
        td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
        }
</style>
  <h2><?php echo $pageTitle; ?></h2>
  <table class="torrentek">
      <tr> <th> Név <th> Feltöltés ideje <th> Méret <th> Letöltés</tr>    
  
  <?php
  foreach ($torrentek as $item) {
      echo '<tr> <td>'.$item['nev'];
      echo '<td>'.$item['feltoltes_ideje'];
      echo '<td>'.$item['meret'];
      echo '<td> <a href="admin/uploads/'.$item['torrent_fajl'].'">letöltés</a>';
      
  }
  ?>
  </table>
  
  
</div>

<?php
include('includes/footer.php');
