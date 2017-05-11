<?php
require_once'libs/PDOConfig.php';

$baseDatos=new PDOConfig();


if ($_GET) {
  $sql="SELECT idUsuario FROM usuarios WHERE Usuario='".$_GET['nombreUsuario']."'";
  $resultado=$baseDatos->query($sql);
  if(!$resultado){
    echo("Error en la consulta");
  }
  else {
    $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
    if(count($datos)){
      echo "<b style='color:red'>Este usuario ya esta en uso</b>";
    }
    else{
      echo "<b style='color:green'>Usuario valido</b >";
    }
  }
}














 ?>
