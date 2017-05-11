function validar(){
    var respuesta=true;

    var valores = {'nombre': $("#nombre").val(), 'empresa':$("#empresa").val(),'numero':$("#numero").val(),'mail':$("#mail").val(),'comentarios':$("#comentarios").val() };
    for(var id in valores) {
      if(valores[id]===null || valores[id]==="" || valores[id].length===0){
          $("#"+id).css("borderColor", "red");
          $("#"+id).attr("placeholder","Ingrese datos");
          respuesta=false;
        }
        else {
          $("#"+id).css("borderColor", "grey");//saco el color de error
          switch (id) {
            case 'numero'://verifico que sea numerico
                          if (isNaN($("#numero").val())) {
                            $("#numero").val('');// hay que sacar el texto para que se vea el placeholder
                            $("#numero").attr("placeholder","Ingrese solo numeros");
                            $("#"+id).css("borderColor", "yellow");
                            respuesta=false;
                          }
            break;
          //  case 'mail':alert("dentro de mail");break; verificar que tenga formato de mail


            default: //no hago nada;
            break;
          }
        }
      }

return respuesta;//si retorno respuesta recarga la pagina
}
