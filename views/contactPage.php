<?php include('includes/header.php'); ?>

<div id="content">
  <h2><?php echo $page['title']; ?></h2>
  
  <?php echo $page['text']; ?>
  
  <h3>Üzenetküldés:</h3>
  <form name="contactForm" method="post">
    <label>Név:</label>
    <br>
    <input type="text" name="contactName">
    <br>
    <label>e-mail:</label>
    <br>
    <input type="email" name="contactEmail">
    <br>
    <label>Üzenet:</label>
    <br>
    <textarea name="contactMessage"></textarea>
    <br>
    <input type="submit" name="contactSubmit">
  </form>
  <br>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://wordpress-hosting.me" id="get-map-data">http://wordpress-hosting.me</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(40.7806978,-73.93837020000001),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(40.7806978, -73.93837020000001)});infowindow = new google.maps.InfoWindow({content:"<b>Fot&oacute;Club</b><br/>Mill Rock<br/> New York" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>

</div>

<?php
include('includes/footer.php');