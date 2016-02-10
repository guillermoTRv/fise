$(function(){
    $(document).on("click","#btn-comenzar",function(){
                    var url="../scripts/en_accion/mostrar_primer_ejercicio.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_comenzar").serialize(),
                        success:function(data){
                            $("#sector_cambio").html(data);
                        }

                    });

                    return false;
                });
            });
$(function(){
          $(document).on("click","#btn-evaluar-te",function(){
                    var url="../scripts/en_accion/evaluar_ejercicio.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_seccion_te").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#input_te").html(data.uno);
                            $("#boton_te").html(data.dos);
                            $("#resp_te").html(data.tres);
                            $("#barra_ejerc").html(data.cuat);
                        }

                    });

                    return false;
                });
            });

$(function(){
          $(document).on("click","#btn-pasar",function(){
                    var url="../scripts/en_accion/cambiar_de_ejercicio.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#pasar_ejercicio").serialize(),
                        success:function(data){
                            $("#el_ejercicio").html(data);
                        }

                    });

                    return false;
                });
            });