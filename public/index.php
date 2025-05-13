<?php
if(!isset($_SESSION['login'])){ 
    header("Location: inlog.php");
}
exit();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>welkom page</h1>
</body>
</html>