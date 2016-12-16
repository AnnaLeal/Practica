<html>
<head>
<title>Lista de Libros</title>
</head>
	
	
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page import="java.sql.SQLException"%>
<%@page import="com.arquitecturajava.DataBaseHelper"%> 
<%@page import="com.arquitecturajava.Libro"%> 
<%@page import="java.util.ArrayList"%> 
<%@ page import ="java.util.List" %>
<body>

<select name="categoria">
<option value="seleccionar">seleccionar</option>

<% List<String> listaDeCategorias=null; 
listaDeCategorias=Libro.buscarTodasLasCategorias(); 
for(String categoria:listaDeCategorias) { %>
<option value="<%=categoria%>"><%=categoria%></option> 
<% } %>
</select><br/>

<%

List<Libro> listaDeLibros=null; 
listaDeLibros=Libro.buscarTodos();
for(Libro libro:listaDeLibros){ %> 
<%=libro.getIsbn()%>
<%=libro.getTitulo()%>
<%=libro.getCategoria()%>

<a href="BorrarLibro.jsp?isbn=<%=libro.getIsbn()%>">Borrar</a>
<a href="FormularioEditarLibro.jsp?isbn=<%=libro.getIsbn()%>">Editar</a>
<br/>
<% } %>
<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>



</body></html>