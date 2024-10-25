<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.unu.poo2.beans.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listando probando</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Cod. Autor</th>
				<th>Nombre autor</th>
				<th>Nacionalidad</th>
				<th>Operaciones</th>
			</tr>
		</thead>
		
		<tbody>
			<%
				List<Autor> listaAutores = (List<Autor>) request.getAttribute("listarAutores");
			    if(listaAutores !=null){
			    	for(Autor autor: listaAutores){
			    %>
			    	<tr>
			    	<td><%autor.getCodigoAutor();%></td>
			    	<td><%autor.getNombreAutor();%></td>
			    	<td><%autor.getNacionalidad();%></td>
			    	</tr>
			    <%
			    	}
			    }else{
			    	
			    }
			%>
			
			<tr>
				<td>No hay datos</td>
				<td>No hay datos</td>
				<td>No hay datos</td>
			</tr>
			
					
		</tbody>
	</table>
</body>
</html>
