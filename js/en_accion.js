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
                    var url="../scripts/en_accion/evaluar_ejercicio_te.php";
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
                            $("#ejerc_correctos").html(data.cinco);
                            $("#ejerc_error").html(data.seis);
                        }

                    });

                    return false;
                });
            });

$(function(){
          $(document).on("click","#btn-evaluar-op",function(){
                    var url="../scripts/en_accion/evaluar_ejercicio_op.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_seccion_op").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#boton_op").html(data.uno);
                            $("#resp_op").html(data.dos);
                            $("#barra_ejerc").html(data.tres);
                            $("#ejerc_correctos").html(data.cinco);
                            $("#ejerc_error").html(data.seis);
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