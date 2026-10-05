<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gimnasio - Resultado</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #eef2f5; margin: 40px; }
        .card { background: white; padding: 25px; border-radius: 8px; max-width: 500px; margin: auto; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
        .etiqueta { background-color: #39a900; color: white; padding: 4px 8px; border-radius: 4px; }
        a { color: #00324d; font-weight: bold; text-decoration: none; display: inline-block; margin-top: 15px; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Resultado de la Operación</h2>
        <p><strong>Método usado:</strong> <span class="etiqueta"><%= request.getAttribute("tipoPeticion") %></span></p>
        <p><strong>Estado:</strong> <%= request.getAttribute("mensaje") %></p>

        <% 
            String tipo = (String) request.getAttribute("tipoPeticion");
            if ("POST".equals(tipo)) {
        %>
            <hr>
            <h3>Datos Registrados:</h3>
            <ul>
                <li><strong>Nombre:</strong> <%= request.getAttribute("nombre") %></li>
                <li><strong>Correo:</strong> <%= request.getAttribute("correo") %></li>
                <li><strong>Membresía/Rol:</strong> <%= request.getAttribute("rol") %></li>
            </ul>
        <% 
            } 
        %>

        <br>
        <a href="formulario.jsp">← Volver al formulario</a>
    </div>
</body>
</html>