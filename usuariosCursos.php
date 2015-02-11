<?php 
	include 'includes/conexiondb.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$idDelCurso = $_POST["curso"];
	$peticion = "SELECT uc.idUsuario, u.nombreUsuario  FROM usuariosCursos AS uc, usuarios AS u WHERE uc.idUsuario= u.idUsuario AND uc.idCurso=".$idDelCurso;
	$resultadoPeticion = mysqli_query($con,$peticion);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>UsuariosCurso</title>
	</head>
	<body>
		<!-- Select -->
		<form action="notas.php" method="post">
		  Estudiantes:<br/> 
		   <select name="usuario">
		  <?php
	
			   	while ($row = mysqli_fetch_array($resultadoPeticion)) {  
					echo "<option value='".$row['idUsuario']."'>".$row['nombreUsuario'] ."</option>";
					
				}
			?>

		   </select>
		    <?php
			   echo'	<input type="hidden" value="'.$idDelCurso.'" name="curso" />'
			?>
		   <p><input type="submit" value="Aceptar" /></p>
		</form>
	</body>
</html>