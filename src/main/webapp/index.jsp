<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.unu.poo2.beans.Autor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mi primera pagina web</title>
</head>
<body>
    <h1>Pagina popepina</h1>
	<p>Mi pagina p causa pa que veas el nivel</p>
	
	<a href="https://youtu.be/iY_nnefHKIY?si=dSpllFGrKbqvA_7m">Link a videito</a>
	<a href="gamers-outlet.net">Link a keys baratas</a>
	
	<table id="tabla">
	 <thead>
		 <tr>
			<th>Codigo del autor</th>
			<th>Nombre del autor</th>
			<th>Nacionalidad</th>
			<th>Operaciones</th>
		 </tr>
	 </thead>
	 <tbody> 
		<%
		List<Autor> listaAutores = (List<Autor>) request.getAttribute("listaAutores");
        
        // Verificar si la lista no es nula
        if (listaAutores != null) {
            // Iterar sobre la lista de autores
            for (Autor autor : listaAutores) {
        %>
            <tr>
				 <td><%= autor.getCodigoAutor() %></td>
				 <td><%= autor.getNombreAutor() %></td>
				 <td><%= autor.getNacionalidad() %></td>
				 <td></td>
			 </tr>
        <%
            }
        } else {
        %>
        
         	 <tr>
				 <td>No hay datos</td>
				 <td>No hay datos</td>
				 <td>No hay datos</td>
				 <td></td>
			 </tr>
        
        <%
            }
        %>
			
		
 	</tbody>
	
</body>
</html>