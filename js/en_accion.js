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