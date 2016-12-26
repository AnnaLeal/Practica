<?xml version="1.0" encoding="UTF-8"?>
<%@ page import="java.util.List" %>
<%@page import="com.arquitecturajava.Libro"%>
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
		
		<script type="text/javascript">
			function validacion() {
			if (document.forms[0].isbn.value == "")
			alert("datos no validos"); else
			document.forms[0].submit();
		} 
			</script>
 <title>Formulario Libro</title>
</head>

<body class="gray-bg">
    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>   
            <h3>Formulario alta libro</h3>
            <form class="m-t" role="form" action="InsertarLibro.jsp">
                <div class="form-group">
                <p>ISBN:
                    <input type="text" class="form-control"  name="isbn">
                </p>
                </div>
                <div class="form-group">
                <p>Titulo:
                    <input type="text" class="form-control" name="titulo">
                </p>
                </div>
                <div class="form-group">
                 <p>Categoria:
                    <input type="text" class="form-control" name="categoria">
                </p>
                </div>
                <p>    
        		<button type="button" value="Insertar" onclick="validacion()" class="btn btn-primary block full-width m-b">Insertar Libro</button>
            </form> 
        </div>
    </div>
</body>

</html>
