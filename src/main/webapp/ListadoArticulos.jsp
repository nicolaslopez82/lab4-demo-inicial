<%@page import="entidad.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<style type="text/css">
	<jsp:include page="css/StyleSheet.css"></jsp:include>
</style>
<title>Listado Articulos</title>
</head>
<body>

<div class="encabezado"></div>


<div class="parteIzq">

		<div class="menu">
		<ul>
			<li> <a href="Home.jsp"> <span class="fa fa-home"></span> Controles HTML5</a> 
			
					<ul>
						<li><a href="Controles.jsp">Controles</a></li>
					 	<li><a href="Validaciones.jsp">Validaciones</a></li>
					    <li><a href="Propiedades.jsp">Propiedades</a></li>
					    <li><a href="ListadoArticulos.jsp">Listado Articulos</a></li>
					</ul>
			
			</li>
		</ul>
		</div>

</div>
<div class="parteDer"> 

<% 
	List<Articulo> articuloList = new ArrayList<Articulo>();
	if(request.getAttribute("articuloList")!=null)
	{
		articuloList = (List<Articulo>) request.getAttribute("articuloList");
	}

 %>
 
 <% if(articuloList!=null){ %>
<table id="table_id" class="display" border="1" cellspacing="0" cellpadding="0">
    <thead>
        <tr>
            <th>ID Articulo</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>ID Categoria</th>
            <th>Estado</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
       <%  if(articuloList!=null)
		for(Articulo articulo : articuloList) 
		{
	%>
		<tr>  		
			<td><%=articulo.getIdArticulo() %></td> 
			<td><%=articulo.getNombre() %></td>   
			<td><%=articulo.getPrecio() %></td>
			<td><%=articulo.getCategoria() %></td>
			<td><%=articulo.getEstado() %></td>								
		</tr>
	<%  } %>
    </tbody>
</table>
<%  } %>

</div>


</body>
</html>