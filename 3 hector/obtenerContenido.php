<?php

require_once'libs/PDOConfig.php';

$baseDatos=new PDOConfig();

if ($_GET) {

  $sql="SELECT Contenido FROM `tabs` WHERE idTab ='".$_GET['id']."'";
  $resultado=$baseDatos->query($sql);
  if(!$resultado){
    echo("Error en la consulta");
  }
  else {
    $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);

// echo($row[0]['Contenido'])
    foreach ($datos as $row) {
     echo $row['Contenido'];
    }

  }
}


/*

$IdTabString = $_GET['id'];
$idTab = (int)$IdTabString;

$servername = "http://meta.fi.uncoma.edu.ar/hjara/";
$username = "hjara";
$password = "123456";
$dbname = "hjara";
*/



/*
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT Contenido FROM `tabs` WHERE idTab ='". $idTab. "'";
$result = $conn->query($sql);
while ($row = $result->fetch_assoc()) {
    echo $row['Contenido']."<br>";
}


$conn->close();*/
?>
