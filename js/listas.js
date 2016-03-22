    $(document).on("change","#materia_slc",function(){
                   $("#materia_slc option:selected").each(function () {
                    elegid=$(this).val();
                    $.post("practicas/listas/ajax/materia.php", { elegid: elegid }, function(data){
                    $("#unidades").html(data);
                    
                });
           })
        });

    $(document).on("change","#unidades",function(){
                   $("#unidades option:selected").each(function () {
                    elegido=$(this).val();
                    $.post("practicas/listas/ajax/temas.php", { elegido: elegido }, function(data){
                    $("#temas").html(data);       
                });
           })
        });

    $(document).on("change","#materia_uno",function(){
                   $("#materia_uno option:selected").each(function () {
                    elegido_mod=$(this).val();
                    $.post("practicas/listas/ajax/modulos_materia.php", { elegido_mod: elegido_mod }, function(data){
                    $("#modulos_materia").html(data);       
                });
           })
        });

     /*------------------------------------------------------------------------------------------------------------*/
        
        $(function(){
          $(document).on("click","#btn-rc",function(){
                    var url="practicas/listas/process/validacion_crearlista.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_rc").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#m_rc").html(data.uno);
                            $("#valor").html(data.dos);
                        }

                    });

                    return false;
                });
            });

        $(function(){
        $(document).on("click","#btn-cancel",function(){
                    var url="practicas/listas/process/auxilar_cancelacion_crearlista.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#cancelar").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#m_rc").html(data.uno);
                            $("#valor").html(data.dos);
                        }

                    });

                    return false;
                });
            });


        $(function(){
        $(document).on("click","#btn-ahora_rc",function(){
                    var url="practicas/listas/process/crearlista.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#crear_si").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#m_rc").html(data.uno);
                            $("#valor").html(data.dos);
                            $("#retener").html(data.tres);

                        }

                    });

                    return false;
                });
            });

        $(function(){
        $(document).on("click","#btn-rel",function(){
                    var url="practicas/listas/process/validar_relacion.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_rel").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#validar_r").html(data.uno_r);
                            $("#mensaje").html(data.dos_r);
                            $("#parte_form").html(data.tres_r);
                        }

                    });

                    return false;
                });
            });

        $(function(){
        $(document).on("click","#btn-crel",function(){
                    var url="practicas/listas/process/cancelacion_relacion.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#cancel_rel").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#validar_r").html(data.uno_r);
                            $("#mensaje").html(data.dos_r);
                            $("#parte_form").html(data.tres_r);
                        }

                    });

                    return false;
                });
            });

        $(function(){
        $(document).on("click","#btn-ahorasi_rel",function(){
                    var url="practicas/listas/process/crear_relacion.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_rel").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#validar_r").html(data.uno_r);
                            $("#mensaje").html(data.dos_r);
                            $("#parte_form").html(data.tres_r);
                            $("#ir_a_ej").html(data.r_r);
                        }

                    });

                    return false;
                });
            });
/*------------------------------------------------------------------------------------------------------*/

        $(function(){
            $(document).on("click","#btn-ej",function(){

                var formData = new FormData($("#form_ej")[0]);

                var ruta = "practicas/ejercicios/process/validar_crear_ejercicio.php";

                $.ajax({

                    url: ruta,

                    type: "POST",

                    data: formData,
                    dataType:"json",
                    contentType: false,
                    processData: false,
                    success: function(datos)
                    {
                        $("#mens_ejer").html(datos.a);
                        $("#aqui_va_form").html(datos.b);
                    }
                });
            });
         });

        $(function(){
        $(document).on("click","#btn_corr",function(){
                    var url="practicas/ejercicios/process/corregir_ejercicio.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#form_ej").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#mens_ejer").html(data.funo);
                            $("#aqui_va_form").html(data.fdos);
                        }

                    });

                    return false;
                });
            });


        $(function(){
        $(document).on("click","#btntx",function(){
                    var url="practicas/ejercicios/process/tx.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#formtx").serialize(),
                        dataType:"json",
                        success:function(data){
                            $("#menstx").html(data.runo);
                            $("#campos_tx").html(data.rdos);
                        }

                    });

                    return false;
                });
            });

        $(function(){
            $(document).on("click","#btnop",function(){

                var formData = new FormData($("#formop")[0]);

                var ruta = "practicas/ejercicios/process/op.php";

                $.ajax({

                    url: ruta,

                    type: "POST",
                    dataType:"json",
                    data: formData,
                    contentType: false,
                    processData: false,
                    success: function(datos)
                    {
                        $("#campo_abloquear").html(datos.wauno);
                        $("#mensop").html(datos.wados);
                    }
                });
            });
         });



        $(function(){
            $(document).on("click","#btnop_subir",function(){

                var formData = new FormData($("#formop")[0]);

                var ruta = "practicas/ejercicios/process/op_subir.php";

                $.ajax({

                    url: ruta,

                    type: "POST",

                    data: formData,
                    dataType:"json",
                    contentType: false,
                    processData: false,
                    success: function(datos)
                    {
                        $("#campos_op").html(datos.in_uno);
                        $("#mensop").html(datos.in_dos);
                        $("#ingresar_correcto").html(datos.in_tres);
                    }
                });
            });
         });

        $(function(){
        $(document).on("click","#btn_inciso",function(){
                    var url="practicas/ejercicios/process/mostrar_inciso.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#colocar_correcto").serialize(),
                        success:function(data){
                            $("#quitar_este").html(data)
                        }

                    });

                    return false;
                });
            });

        $(function(){
        $(document).on("click","#btn_ya",function(){
                    var url="practicas/ejercicios/process/inciso_correcto.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#ya").serialize(),
                        success:function(data){
                            $("#quitar_este").html(data)
                        }

                    });

                    return false;
                });
            });


    /*  $(function(){
        $(document).on("click","#btn_term",function(){
                    var url="practicas/process/poner_botones.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#term_op").serialize(),
                        success:function(data){
                            $("#botones").html(data);
                        }

                    });

                    return false;
                });
            });*/

        $(function(){
        $(document).on("click","#btn_pasar",function(){
                    var url="practicas/pasar_ejercicios.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#pasar").serialize(),
                        success:function(data){
                            $("#pasar_ej").html(data);
                        }

                    });

                    return false;
                });
            });

    $(function(){
        $(document).on("click","#btn_terminar",function(){
                    var url="practicas/terminar_lista.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#terminar").serialize(),
                        success:function(data){
                            $("#pasar_ej").html(data);
                        }

                    });

                    return false;
                });
            });
