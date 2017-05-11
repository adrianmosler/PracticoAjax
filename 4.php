<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script type="text/javascript" src="js/validarFormulario.js"></script>

    <title>Ejercicio 4</title>
  </head>
  <body>


<div class="container">

  <script type="text/javascript">
     $(document).ready(function(){



       $("#enviar").click(function(){

         if(validar()){
         $.ajax({
           url: "cargarContacto.php",
           type: "POST",
           async: true,
           data: $("form").serialize(),
           success: function(response){
                $("#mensaje").html(response);
           }


         })
       }
      
       })
     })


  </script>


    <form  action="" method="" onsubmit="" class="form-horizontal"> <!--la validacion la hago por ajax-->
      <h3>Ejercicio 4</h3>

      <hr>

      <div class="form-group">
        <label for="nombre" class="col-md-2 control-label">Nombre:</label>
        <div class="col-md-3">
            <input type="text" name="nombre" id="nombre" placeholder="Ingrese su nombre" class="form-control" maxlength="50">
        </div>

      </div>

      <div class="form-group">
        <label for="empresa" class="col-md-2 control-label">Empresa:</label>
        <div class="col-md-3">
            <input type="text" name="empresa" id="empresa" placeholder="Ingrese su empresa" class="form-control" maxlength="50">
        </div>

      </div>

      <div class="form-group">
        <label for="numero" class="col-md-2 control-label">Número de télefono:</label>
        <div class="col-md-3">
          <input type="text" name="numero" id="numero" placeholder="Ingrese su número" class="form-control" maxlength="20">
        </div>
      </div>

      <div class="form-group">
        <label for="mail" class="col-md-2 control-label">E-mail:</label>
        <div class="col-md-3">
            <input type="text" name="mail" id="mail" placeholder="Ingrese su mail" class="form-control" maxlength="50">
        </div>

      </div>



      <div class="form-group">
        <label for="comentarios" class="col-md-2 control-label">Comentarios:</label>
        <div class="col-md-5">
          <textarea name="comentarios" id="comentarios" rows="8" cols="50"   placeholder=" ¿Cuál es su comentario?" maxlength="500" class="form-control"></textarea>
        </div>
      </div>

<div class="row">



     <div class="col-md-2">
       <button type="button" id="enviar" name="button" class="btn btn-info">Enviar</button>
       <input type="reset" class="btn btn-info" value="Borrar">
     </div>
     <div class="col-md-2" id="mensaje">

     </div>

</div>
    </form>
    <hr>
<a href="presentacion.html" class="btn btn-info">Ir al inicio</a>


</div>
  </body>
</html>
