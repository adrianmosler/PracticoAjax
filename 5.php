<?php
require_once"libs/PDOConfig.php";

$baseDatos=new PDOConfig();
$sql="SELECT COUNT(*) FROM contactos";
$resultado=$baseDatos->query($sql);
if (!$resultado) {
  echo "error en la consulta";
}
else {
  $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
  $cantidadContactos=$datos[0]['COUNT(*)'];
  $cantidadPaginas=$cantidadContactos/5;
  $listaPaginas="";
  for ($i=1; $i < $cantidadPaginas+1 ; $i++ ) {
    $listaPaginas.="<li><a href='#' title='".$i."' class='paginas'>".$i."</li>";
  }
}


 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Ejercicio 5</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  </head>
  <body>
  <div class="container">

  <script type="text/javascript">
    $(document).ready(function(){
      mostrarTablas(1);
      $(".paginas").click(function(){// poner a y una clase para identificarlos
        var numeroPagina=$(this).attr('title');
        mostrarTablas(numeroPagina);


        });

      });

   function mostrarTablas(numero){
     $.ajax({
       url:"paginacion.php",
       type: "GET",
       async: true,
       data: {"numeroPagina":numero },
       success: function(response){
                $("#tablaContenido").html(response);
       }

     });
   }




  </script>
  <h3>Ejercicio 5</h3>



    <table class="table table-striped ">
      <thead>
        <tr>
          <th>Nombre</th>
          <th>Empresa</th>
          <th>Teléfono</th>
          <th>Mail</th>
          <th>Comentario</th>
        </tr>
      </thead>
      <tbody id="tablaContenido">
        <!--En este lugar esta el contenido de las tablas-->
      </tbody>
    </table>

    <ul class='pagination' id="paginaActual">
      <?php echo $listaPaginas ?>
    </ul>
    <hr>
   <a href="presentacion.html" class="btn btn-info">Ir al inicio</a>

  </div>




  </body>
</html>
