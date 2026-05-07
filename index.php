<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/styles/style.css">
        <link rel="stylesheet" href="./assets/styles/header.css">
        <link rel="stylesheet" href="./assets/styles/footer.css">
        <title>Home</title>
    </head>
    <body>
        <?php 
            include './inc/header.php';

            include './connect.php';

            $sql = "SELECT * FROM `index_page`";

            $result = $mysqli->query($sql);
  
            foreach ($result as $item){
                echo $item["content"];
            }

            include './inc/footer.php';
        ?>
    </body>
</html>