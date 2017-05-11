<?php

require_once'libs/PDOConfig.php';

$baseDatos=new PDOConfig();

if ($_GET){

    $paginaActual = $_GET["paginaActual"];
    $offset = ($paginaActual - 1) * 5 ;  //Obtenemos el lugar desde donde buscar


    $tabla ="";

    $sql="SELECT Nombre, Empresa, Telefono, Mail, Comentario FROM contactos limit ".$offset." , 5";
    $resultado=$baseDatos->query($sql);

    if(!$resultado){
        echo("Error en la consulta de contactos");
    }else{
      $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);

      foreach ($datos as $row) {
       $tabla.= "<tr><td>".$row['Nombre']."</td><td>".$row['Empresa']."</td><td>".$row['Telefono']."</td><td>".$row['Mail']."</td><td>".$row['Comentario']."</td></tr>";
      }

      echo $tabla;


    }



}

?>
