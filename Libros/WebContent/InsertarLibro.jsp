<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>Lista de Libros</title>
</head>
<body>
<%-- Cod. antes de crear claseLibro
<%@page import="com.arquitecturajava.DataBaseHelper"%> <%
	String isbn= request.getParameter("isbn");
	String titulo= request.getParameter("titulo");
	String categoria= request.getParameter("categoria");
	//realizo la consulta usando el DBHelper y el codigo queda simplificado 
	String consultaSQL= "insert into Libros (isbn,titulo,categoria) values "; 
	consultaSQL+= "('" +isbn+ "','" +titulo + "','" +categoria+"')"; 
	DataBaseHelper db= new DataBaseHelper();
	int filas=db.modificarRegistro(consultaSQL); 
	response.sendRedirect("MostrarLibros.jsp");
%>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.arquitecturajava.Libro"%> 
<% String isbn= request.getParameter("isbn");
String titulo= request.getParameter("titulo");
String categoria= request.getParameter("categoria");
//realizo la consulta usando el DBHelper y el codigo queda simplificado 
Libro.insertar(isbn,titulo,categoria); 
response.sendRedirect("MostrarLibros.jsp");%>

	