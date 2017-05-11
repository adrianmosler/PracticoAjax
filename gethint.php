<?php

require_once'libs/PDOConfig.php';

$baseDatos=new PDOConfig();
    $hint = "";
if ($_GET){



    $sql="SELECT * FROM estados WHERE descripcion LIKE '".$_GET['letra']."%'";
    $resultado=$baseDatos->query($sql);

    if(!$resultado){
        echo("Error en la consulta");
    }else{
      $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
      //$a = array();
      $sugerencias="";
      foreach ($datos as $row) {
       //$a[]= $row['descripcion'];
       $sugerencias.=$row['descripcion'].", ";
      }
      if (strlen($sugerencias)) {
        $sugerencias=substr($sugerencias,0,strlen($sugerencias)-2);//saco la ultima coma
      }
      else {
        $sugerencias="No hay sugerencias";
      }
  }
    //$q = $_GET["letra"];
    /*if ($q !== "") {
        $q = strtolower($q);  //Pasa a minisculas
        $len=strlen($q);      //Devuelve el largo del string
        foreach($a as $name) { //Recorre cada estado obtenido de la base de datos
        if (stristr($q, substr($name, 0, $len))) { //stristr "Case unsesitive" substr "substrae parte del string"
            if ($hint === "") {
                $hint = $name;  //Sino no hay estados , agrega el nombre obtenido a $hint
            } else {
                $hint .= ", $name";  //Si ya hay alguno agregado lo suma separado por una coma
            }
        }
    }
}*/
}

// Responde de acuerdo si hay sugerencias o no
//echo $hint === "" ? "No hay sugerencias" : $hint;
echo $sugerencias; //=== "" ? "No hay sugerencias" : $sugerencias;

?>
