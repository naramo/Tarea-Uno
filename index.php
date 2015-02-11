<?php 
	include_once 'includes/conexiondb.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$query = "SELECT * FROM cursos ORDER BY idCurso ASC";
	$resultQuery = mysqli_query($con,$query);
?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->
		<form action="usuariosCursos.php" method="post">
		  Estudiantes:<br/> 
		   <select name="curso">
		   <?php
			   	while ($row = mysqli_fetch_array($resultQuery)) {  
				/*<option value="<?php echo $row['id_estudiante'] ?>"> <?php echo $row['nombre'] ?> </option>*/
					echo "<option value='".$row['idCurso']."'>".$row['nombre'] ."</option>";
				}
			?>
		   </select>
		   <p><input type="submit" value="Hola" /></p>
		</form>
	</body>
</html>