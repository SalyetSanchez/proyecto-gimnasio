<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión / Consulta</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Contenedor principal de dos columnas */
        .login-wrapper {
            display: flex;
            width: 100%;
            max-width: 950px;
            background: #ffffff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            margin: 20px;
        }

        /* Columna izquierda: Imagen decorativa */
        .image-container {
            flex: 1;
            background-image: url('https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?q=80&w=800&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
            min-height: 480px;
        }

        /* Columna derecha: Fondo claro contenedor del card */
        .form-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
            background-color: #fcfcfc;
        }

        /* Tarjeta color naranja con bordes redondeados */
        .card-orange {
            background-color: #e08343;
            width: 100%;
            max-width: 360px;
            padding: 40px 30px;
            border-radius: 25px;
            color: #333333;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            text-align: left;
        }

        .card-orange h2 {
            font-size: 2rem;
            color: #2c2c2c;
            text-align: center;
            margin-bottom: 25px;
            font-weight: 800;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            color: #ffffff;
            font-size: 1.05rem;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-radius: 12px;
            background-color: #d8d8d8;
            font-size: 1rem;
            outline: none;
            box-shadow: inset 0 2px 4px rgba(0,0,0,0.1);
        }

        .forgot-pass {
            text-align: right;
            margin-top: -10px;
            margin-bottom: 25px;
        }

        .forgot-pass a {
            color: #333333;
            font-size: 0.82rem;
            text-decoration: underline;
        }

        /* Botón gris oscuro oscurecido al hacer hover */
        .btn-submit {
            width: 100%;
            padding: 14px;
            background-color: #4a4d52;
            color: #ffffff;
            border: none;
            border-radius: 15px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            transition: background-color 0.2s ease;
        }

        .btn-submit:hover {
            background-color: #333538;
        }

        .create-account {
            text-align: center;
            margin-top: 15px;
        }

        .create-account a {
            color: #333333;
            font-size: 0.85rem;
            text-decoration: underline;
        }

        /* Ajuste para pantallas pequeñas */
        @media (max-width: 768px) {
            .image-container {
                display: none;
            }
        }
    </style>
</head>
<body>

    <div class="login-wrapper">
        <!-- Columna Izquierda: Imagen del gimnasio -->
        <div class="image-container"></div>

        <!-- Columna Derecha: Tarjeta de Login / Consulta -->
        <div class="form-container">
            <div class="card-orange">
                <h2>Iniciar sesión</h2>
                
                <form action="ControllerServlet" method="GET">
                    <div class="form-group">
                        <label for="usuario">Usuario:</label>
                        <!-- Se asigna el name="documento" para mantener compatibilidad con tu Servlet -->
                        <input type="text" id="usuario" name="documento" required>
                    </div>

                    <div class="form-group">
                        <label for="clave">Clave:</label>
                        <input type="password" id="clave" name="clave">
                    </div>

                    <div class="forgot-pass">
                        <a href="#">¿Olvidaste tu contraseña?</a>
                    </div>

                    <button type="submit" class="btn-submit">Iniciar sesión</button>

                    <div class="create-account">
                        <a href="index.jsp">Crear usuario</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>