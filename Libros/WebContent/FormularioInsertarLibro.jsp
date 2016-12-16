
<html>
<head>
<script type="text/javascript">
function validacion() {
if (document.forms[0].isbn.value == "")
alert("datos no validos"); else
document.forms[0].submit();
} </script>
<title>Formulario Libro</title> </head>
<body>
<form action="InsertarLibro.jsp">
<fieldset>
<legend>Formulario alta libro</legend>
<p>ISBN:
<input type="text" name="isbn">
</p>
<p>
Titulo:
<input type="text" name="titulo">
</p>
<p>
Categoria:
<input type="text" name="categoria">
</p>
<p>
<input type="button" value="Insertar" onclick="validacion()"> </p>
</fieldset>
</form>

</body>
	
</html>