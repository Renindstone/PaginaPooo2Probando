<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar nuevo autor</title>
</head>
<body>
	
	<%String url = "http://localhost:8080/PaginaWebProbando/"; %>
	
	<h3>Nuevo autor</h3>
	
	<form role="form" action="<%=url%>AutoresController" method="POST">
		
		<input type="hidden" name="op" value="insertar" />
		<label for="nombre">Nombre del Autor</label>
		<input type="text" name="nombre" id="nombre" />
		<label for="nacionalidad">Nacionalidad</label>
		<input type="text" name="nacionalidad" id="nacionalidad" />
		<input type="submit" value="Guardar" name="Guardar">
		<a href="<%=url%>AutoresController?op=listar">Retornar</a>
	</form>
</body>
</html>