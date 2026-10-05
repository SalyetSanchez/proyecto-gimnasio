<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gimnasio - Inicio</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; margin: 40px; }
        .card { background: white; padding: 20px; border-radius: 8px; max-width: 500px; margin: auto; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
        .btn { background-color: #39a900; color: white; padding: 10px 15px; border-radius: 4px; text-decoration: none; display: inline-block; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Bienvenido al Sistema del Gimnasio</h2>
        <p><strong>Fecha y hora del servidor:</strong> <%= new Date() %></p>
        <hr>
        <p>Gestión de usuarios y registros:</p>
        <a href="formulario.jsp" class="btn">Ir al Formulario</a>
    </div>
</body>
</html>