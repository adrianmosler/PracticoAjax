<?php
require_once'libs/PDOConfig.php';
//print_r($_POST);
if ($_POST['nombre'] && $_POST['empresa'] && $_POST['numero'] && $_POST['mail'] && $_POST['comentarios']) {
  $baseDatos=new PDOConfig();
  $sqlConsultaEmpresa="SELECT IdContacto FROM contactos WHERE Empresa='".$_POST['empresa']."'";//verificar que el usuario no este cargado previamente
  $sqlConsultaMail="SELECT IdContacto FROM contactos WHERE Mail='".$_POST['mail']."'";
  $sqlConsultaTelefono="SELECT IdContacto FROM contactos WHERE Telefono='".$_POST['numero']."'";
  $sqlInsercion="INSERT INTO contactos (Nombre,Empresa,Telefono,Mail,Comentario)
                 VALUES ('".$_POST['nombre']."','".$_POST['empresa']."','".$_POST['numero']."','".$_POST['mail']."','".$_POST['comentarios']."') ";

  $resultadoEmpresa=$baseDatos->query($sqlConsultaEmpresa);
  $resultadoMail=$baseDatos->query($sqlConsultaMail);
  $resultadoTelefono=$baseDatos->query($sqlConsultaTelefono);

  if (!$resultadoEmpresa || !$resultadoMail || !$resultadoTelefono) {
    echo "Error en la consulta";
  }
  else {
     $datoEmpresa=$resultadoEmpresa->fetchAll(PDO::FETCH_ASSOC);
     $datoMail=$resultadoMail->fetchAll(PDO::FETCH_ASSOC);
     $datoTelefono=$resultadoTelefono->fetchAll(PDO::FETCH_ASSOC);
     $estaRepetido=false;

     foreach ($datoEmpresa as $row) {
       if(count($row['IdContacto'])){
         $estaRepetido=true;
       }
     }
       foreach ($datoMail as $row) {
         if(count($row['IdContacto'])){
           $estaRepetido=true;
         }
       }
         foreach ($datoTelefono as $row) {
           if(count($row['IdContacto'])){
             $estaRepetido=true;
           }
     }
     if ($estaRepetido) {
       echo "<p style='color: red'>Uno o más de los campos que esta ingresando ya se encuentra en la base de datos</p>";
     }
     else {
       $resultadoInsercion=$baseDatos->query($sqlInsercion);
       if (!$resultadoInsercion) {
         echo "Error en la insercion";
       }
       else {
         echo "<p style='color: green'>Contacto almacenado correctamente</p>";
       }
     }
  }


}
else {
  echo "<p style='color: red'>Uno de los campos esta vacio,por favor complete todos los campos</p>";
}




 ?>
