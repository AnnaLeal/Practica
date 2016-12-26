<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@page import="com.arquitecturajava.Libro"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Lista de Libros</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>
 
     <div class="ibox-title">
		 <h5>Libros</h5>
     </div>  
     <div class="ibox-content">
         <p>
         Lista de libros que se encuentras almacenados en la base de datos                   
       	 </p>
       	 
       <div class="table-responsive">
        <table class="table table-bordered table-striped">
        <thead>
         <tr>    
          <th style="width: 100px;">ISBN</th>
          <th style="width: 200px;">Título</th>
          <th style="width: 250px;">Categoría</th>
          <th>Acción</th>
         </tr>
        </thead>
	 <tbody>
          <tr> 
	<%
	List<Libro> listaDeLibros=null;
	 
	if (request.getParameter("categoria")==null || request.getParameter("categoria").equals("seleccionar")) {
	
		 listaDeLibros=Libro.buscarTodos();
	}
	
	
	 else {
			
		 listaDeLibros=Libro.buscarPorCategoria(request.getParameter("categoria"));
		 	
		
	}
	 for(Libro libro:listaDeLibros){ %>

	 <td> <%=libro.getIsbn()%></td>
	 <td> <%=libro.getTitulo()%> </td>
	 <td>  <%=libro.getCategoria()%></td>
	
	 
		 <td>	<a href="BorrarLibro.jsp?isbn=<%=libro.getIsbn()%>">Borrar</a>  </td>
		 <td>	<a href="FormularioEditarLibro.jsp?isbn=<%=libro.getIsbn()%>">Editar</a>  </td>
			
	 </tr>
	 
	<% } 

%>
 </tbody>
  	</table>
	</div>

<form name="filtroCategoria">
 <a  href="index.jsp" class="btn btn-primary block-width" >Insertar Libro</a>
			<select class="btn" name="categoria">
			<option value="seleccionar">seleccionar</option>
			<% 
			List<String> listaDeCategorias=null;
			listaDeCategorias=Libro.buscarTodasLasCategorias();
			for(String categoria:listaDeCategorias) { %>
	   <option value="<%=categoria%>"><%=categoria%></option>
		<%  }%>
</select>
	<input type="submit" class="btn btn-primary block-width " value="filtrar">

		</form>
     </div>       
</body>
</html>