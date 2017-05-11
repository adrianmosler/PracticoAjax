<?php
require_once 'libs/PDOConfig.php';

//echo "<option value=0>hola</option>";
$baseDatos=new PDOConfig();
//$var="<option>hola que tul</option><option>que haces</option>";
//echo $var;
$comboEstados="";
//echo"<option>Hola que tal</option>";
if ($_GET) {
  //print_r($_GET);
  $sqlEstados="SELECT estados.descripcion,estados.id FROM paises INNER JOIN estados ON estados.idPais=paises.id WHERE paises.id=".$_GET['idPais'];
  $resultadoEstados=$baseDatos->query($sqlEstados);
  if (!$resultadoEstados) {
    echo "Error en la consulta";
  }
  else {
    $datosEstados=$resultadoEstados->fetchAll(PDO::FETCH_ASSOC);

    foreach ($datosEstados as $row) {
      $comboEstados.="<option value=".$row['id'].">".$row['descripcion']."</option>";

    }

  }

}

echo $comboEstados;

?>
