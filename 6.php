<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <title>Ejercicio 6</title>
  </head>
  <body>
    <script type="text/javascript">
       $(document).ready(function(){
         $("#usuario").change(function(){



           $.ajax({
             url: "verificarUsuario.php",
             type: "GET",
             async: true,
             data: {nombreUsuario: $('#usuario').val()},
             success: function(response){
               $("#errorUsuario").html(response);
             }


           })

         })
       })


    </script>


<div class="container">



    <form  action="" method="post" onsubmit="return validar()" class="form-horizontal">
      <h3>Ejercicio 6</h3>

      <hr>
      <h4>Registro de usuarios</h4>
      <br>
      <div class="form-group">
        <label for="nombre" class="col-md-2 control-label">Nombre:</label>
        <div class="col-md-3">
            <input type="text" name="nombre" id="nombre" placeholder="Ingrese su nombre" class="form-control" maxlength="50">
        </div>

        </div>

        <div class="form-group">
          <label for="apellido" class="col-md-2 control-label">Apellido:</label>
          <div class="col-md-3">
              <input type="text" name="apellido" id="apellido" placeholder="Ingrese su apellido" class="form-control" maxlength="50">
          </div>

      </div>
      <div class="form-group">
        <label for="nombreU" class="col-md-2 control-label">Usuario:</label>
        <div class="col-md-3">
            <input type="text" name="usuario" id="usuario" placeholder="Ingrese usuario" class="form-control" maxlength="50">
        </div>
        <div class="col-md-3" id="errorUsuario">

        </div>

      </div>



      <div class="form-group">
        <label for="numero" class="col-md-2 control-label">Clave:</label>
        <div class="col-md-3">
          <input type="password" name="psw" id="psw" placeholder="Ingrese su contraseña" class="form-control" maxlength="30">
        </div>
      </div>



 <br>
  <input type="submit" name="" value="Enviar" class="btn btn-info">
  <input type="reset" name="" value="Borrar" class="btn btn-info">



    </form>
<hr>
<a href="presentacion.html" class="btn btn-info">Ir al inicio</a>
</div>

</div>

  </body>
</html>
