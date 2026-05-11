<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../assets/styles/filling.css" />
    <link rel="stylesheet" href="../assets/styles/header.css" />
    <link rel="stylesheet" href="../assets/styles/footer.css">
    <title>Filling</title>
  </head>
  <body>
    <?php
      include '../inc/header.php';

      include '../function/connect.php';
    ?>  

    <!-- Секция для блока с начинками -->
    <h2>У нас вы можете купить запчасти для авто</h2>

    <section class="fillings">
      <?php
        $data = "";
        
        $sql = "SELECT * FROM `fillings`";
        
        $result = $mysqli->query($sql);
        
        while($row = $result->fetch_assoc()){
        
          $data .= sprintf('
          <figure class="fillings__filling">
            <img src="%s" alt="%s"/>
            <figcaption>%s</figcaption>
          </figure>
          ', $row['path'], $row['name'], $row['name']);
          
        }
        
        echo $data;
      ?>
    </section>
  </body>
</html>
