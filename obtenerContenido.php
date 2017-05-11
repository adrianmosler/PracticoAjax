<?php
//jara
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

    foreach ($datos as $row) {
     echo $row['Contenido'];
    }

  }
}

?>
