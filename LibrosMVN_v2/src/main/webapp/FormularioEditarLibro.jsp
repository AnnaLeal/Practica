<?xml version="1.0" encoding="UTF-8"?>
<%@ page import="java.util.List" %>
<%@page import="com.arquitecturajava.Libro"%>
<%
Libro libro= Libro.buscarPorClave(request.getParameter("isbn"));
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	    <title>Formulario Libro</title>
</head>
<body class="gray-bg">
    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>   
            <h3>Formulario editar libro</h3>
            <form class="m-t" role="form" id="formularioEdicion" action="SalvarLibro.jsp">
                <div class="form-group">
                <p>ISBN:
                   <input type="text" id="isbn" name="isbn" class="form-control" value="<%=libro.getIsbn()%>"/>
                </p>
                </div>
                <div class="form-group">
                <p>Titulo:
                    <input type="text" id="titulo" name="titulo" class="form-control" value="<%=libro.getTitulo() %>" />
                </p>
                </div>
                <div class="form-group">
                 <p>Categoria:
                    <select class="form-control" name="categoria">
			<% 

List<String> listaDeCategorias=null;

	listaDeCategorias=Libro.buscarTodasLasCategorias();
	 
	 for(String categoria:listaDeCategorias) {
	 
	 if (libro.getCategoria().equals(categoria)) { %>
	 
	 	   <option value="<%=categoria%>" selected="selected"><%=categoria%></option>
	 
	 <%}else{ %>

			   <option value="<%=categoria%>"><%=categoria%></option>
 	<% }
	 } 

	 %>
 	
	</select>
			<br/>
                </p>
                </div>   
        		<button type="submit" value="Salvar" onclick="validacion()" class="btn btn-primary block full-width m-b">Salvar</button>
            </form> 
        </div>
    </div>
</body>
</html>