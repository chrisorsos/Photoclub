<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PHP Portál - <?php echo $pageTitle; ?></title>


        <!-- jQuery: -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <!-- Bootstrap: -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="lib/colorbox/example1/colorbox.css" />
        <script src="lib/colorbox/jquery.colorbox.js"></script>
        <script>
            $(document).ready(function() {
                //Examples of how to assign the Colorbox event to elements
                $(".colorbox").colorbox();
            });
        </script>

        <link rel="stylesheet" type="text/css" href="views/css/base.css">

    </head>
    <body>

        <div id="header">

            <?php include('navigation.php'); ?>
        </div>