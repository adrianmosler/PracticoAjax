<?php
require_once"libs/PDOConfig.php";


$tabla="";
$baseDatos=new PDOConfig();

$sql="SELECT COUNT(*) FROM contactos";
$resultado=$baseDatos->query($sql);

if (!$resultado) {
  echo "error en la consulta count";
}
else {

    $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
    $cantidadContactos=$datos[0]['COUNT(*)'];
    $cantidadPaginas= ceil($cantidadContactos/5);
    echo $cantidadPaginas;

}

//$tabla.="</table>";



 ?>
