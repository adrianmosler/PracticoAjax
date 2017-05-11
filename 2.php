<?php
require_once 'libs/PDOConfig.php';

$baseDatos=new PDOConfig();


  $sql="SELECT id,descripcion FROM paises";

  $resultado=$baseDatos->query($sql);
  if (!$resultado) {
    echo "Error en la consulta";
  }
  else {
    $datos=$resultado->fetchAll(PDO::FETCH_ASSOC);
    $combo="";
    foreach ($datos as $row) {
      $combo.="<option value=".$row['id'].">".$row['descripcion']."</option>";
    }

  }



?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Ejercicio 2</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  </head>
  <body>
    <script type="text/javascript">
    $(document).ready(function(){


     $("#pais").change(function(){
      $.ajax({
        url: 'actualizarEstados.php',
        type: 'GET',
        async: true,
        data: {idPais:$('#pais').val()},
        success:function(response){
          $("#estados").html(response);
        }
      });
  //  alert($('#pais').val());




     }
   );

});

    </script>
    <div class="container">
      <h3>Ejercicio 2</h3>
      <hr>
      <div class="form-group">
       <label for="pais" class="col-md-1 control-label">Pais: </label>
        <div class="col-md-2">
          <select  id="pais" name="pais" class="form-control">
            <?php echo $combo ?>
          </select>
        </div>
       </div>
        <div class="form-group">
          <label for="estados" class="col-md-2 control-label">Estado/Provincia: </label>
          <div class="col-md-2">
            <select  id="estados" name="estados" class="form-control">
              <!--Aca va el contenido de los estados que genero mediante ajax-->
            </select>
          </div>

        </div>

        <br>
        <br>
        <hr>
        <div class="col-md-12">

          <a href="presentacion.html" class="btn btn-info">Ir al inicio</a>
        </div>
    </div>


  </body>
</html>
