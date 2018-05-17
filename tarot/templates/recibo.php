<?php
if($_POST){

   $misDatosJSON = json_decode($_POST["datos"]);

   $salida = "";
   $salida .= "Tu primera carta fue: " . $misDatosJSON[0];
   echo $salida;
}else{
   echo "No recibí datos por POST";
}
?>
