<?php
require_once'libs/PDOConfig.php';

if ($_GET) {
  $baseDatos=new PDOConfig;
  $inicio=($_GET['numeroPagina'] - 1) * 5;
  echo $inicio;
  $sql="SELECT Nombre,Empresa,Telefono,Mail,Comentario FROM contactos LIMIT 5 OFFSET ".$inicio;
  $resultado=$baseDatos->query($sql);
  if (!$resultado) {
    echo "Error en la consulta";
  }
  else {
    $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
    $datosTabla="";
    //print_r($datos);
    foreach ($datos as $row) {
       $datosTabla.="<tr><td>".$row['Nombre']."</td><td>".$row['Empresa']."</td><td>".$row['Telefono']."</td>
       <td>".$row['Mail']."</td><td>".$row['Comentario']."</td></tr>";
    }
    echo $datosTabla;
  }
}








 ?>
