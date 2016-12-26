<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.arquitecturajava.Libro"%>
<%@ page import="com.arquitecturajava.DataBaseException" %>
<%@ page import="org.apache.log4j.Logger"  %>
<% 

  Logger log= Logger.getLogger("Loger_jsp");
	
    String isbn= request.getParameter("isbn");
	String titulo= request.getParameter("titulo");
	String categoria= request.getParameter("categoria");

  log.debug("isbn: "+ isbn+" titulo: "+titulo+" categoria: "+categoria);
	
	Libro libro= new Libro(isbn,titulo,categoria);
	libro.insertar();
	response.sendRedirect("MostrarLibros.jsp");
	

%>

