<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gimnasio - Formulario</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; margin: 30px; }
        .caja { background: white; padding: 20px; margin-bottom: 20px; border-radius: 8px; max-width: 500px; margin: auto; }
        input[type="text"], input[type="email"] { width: 100%; padding: 8px; margin: 8px 0; box-sizing: border-box; }
        input[type="submit"] { background-color: #00324d; color: white; border: none; padding: 10px 15px; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>

    <!-- Método GET para búsquedas -->
    <div class="caja">
        <h3>1. Consultar Usuario (Método GET)</h3>
        <form action="ControllerServlet" method="GET">
            <label>Número de Documento:</label>
            <input type="text" name="documento" required placeholder="Ej: 12345678">
            <input type="submit" value="Buscar">
        </form>
    </div>

    <br>

    <!-- Método POST para registro de usuarios -->
    <div class="caja">
        <h3>2. Registrar Usuario (Método POST)</h3>
        <form action="ControllerServlet" method="POST">
            <label>Nombre Completo:</label>
            <input type="text" name="nombre" required placeholder="Tu nombre">
            
            <label>Correo Electrónico:</label>
            <input type="email" name="correo" required placeholder="correo@ejemplo.com">
            
            <label>Rol/Membresía:</label>
            <input type="text" name="rol" placeholder="Ej: Afiliado">
            
            <br><br>
            <input type="submit" value="Guardar Usuario">
        </form>
    </div>

</body>
</html>