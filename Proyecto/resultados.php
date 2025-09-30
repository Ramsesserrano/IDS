<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¡Resultados de Datos!</title>
    <script src="https://Kit.fontawesome.com/a71701a89a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
     <div class="dive2">
            <h1>¡Resultados!</h1>
            <center>
                <img src="img/img1.jpg" alt="snoopy">
                <?php
                
    $name = $_POST['Name'];
    $age = $_POST['Age'];
    $city = $_POST['City'];
    $brithday = $_POST['Brithday'];
    $hobby = $_POST['Hobby'];

                    echo "<p><b>Nombre:</b> " . $name . "</p>";
                    echo "<p><b>Edad:</b> " . $age . "</p>";
                    echo "<p><b>Ciudad:</b> " . $city . "</p>";
                    echo "<p><b>Dia de Nacimiento:</b> " . $brithday . "</p>";
                    echo "<p><b>Pasatiempo:</b> " . $hobby . "</p>";
?>
            <h2>¡Bien Hecho!</h2>
            <div id="popUpOverlay"></div>
            <div id="popUpBox">
                 <div id="box">
                    <i class="fas fa-question-circle fa-5x"></i>
                    <h1>¿Volver a ingresar datos?</h1>
        <div id="closeModal"></div>
            </div>
         </div>
         <button onclick="Alert.render('You look very pretty today')" class="btn">¡Volver a Ingresar!</button>
         <script src="js/app.js"></script>
         </center>
     </div>
</body>
</html>