<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../assets/styles/cars.css" />
    <link rel="stylesheet" href="../assets/styles/header.css">
    <link rel="stylesheet" href="../assets/styles/footer.css">
    <title>Cars</title>
  </head>
  <body>
    <?php 
      include '../inc/header.php';

      include '../function/connect.php';
    ?>

    <section class="cars">
      <div class="content">
        <?php 
          $data = "";
          
          $sql = "SELECT * FROM `cars`";
          
          $result = $mysqli->query($sql);

          while($row = $result->fetch_assoc()){
          
            $data .= sprintf('
              <div class="car">
                <div class="car__image">
                  <img
                    class="descript__image"
                    src="%s"
                    alt="%s"
                  />
                </div>

                <div class="descript">
                  <div class="descript__text">
                    %s — %s
                  </div>

                  <div class="descript__buy-wrap">
                    <div class="descripr__filling">Цена:</div>
                    <div class="descript__price">15 000 000&#8381;</div>
                    <a href="./index.php#feedback">Заказать</a>
                  </div>
                </div>
              </div>
              ', $row['path'], $row['title'], $row['title'], $row['information']);
          }
          
          echo $data;
        ?>
      </div>
    </section>

    <!-- Подвал сайта с контактной информацией -->
    <?php include './inc/footer.php'; ?>
  </body>
</html>
