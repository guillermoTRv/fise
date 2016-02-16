        <script>
            $(function(){
                $("#btn-v").click(function(){
                    var url="../scripts/panel_contenidos/vista_cont/process/registrar_voto.php";
                    $.ajax({
                        type:"POST",
                        url:url,
                        data:$("#vot").serialize(),

                        success:function(data){
                            $("#m_v").html(data);
                
                        }

                    });

                    return false;
                });
            });
        </script>


<form id="vot" method="post" enctype="multipart/form-data">
	<?php echo "<input type='hidden' name='v_n' value='$cont'>"; ?>
    <?php echo $toquen; ?>
	<span class="glyphicon glyphicon-star"></span>
	<a href="#" value="enviar" id="btn-v" class="amounbas"> Me gusta</a><spam id="m_v"><spam>
</form>