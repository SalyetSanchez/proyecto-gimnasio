<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado de la Consulta</title>
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
        .response-wrapper {
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

        /* Tarjeta terracota / naranja alineada con el login */
        .card-orange {
            background-color: #e08343;
            width: 100%;
            max-width: 360px;
            padding: 35px 25px;
            border-radius: 25px;
            color: #ffffff;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            text-align: left;
        }

        .card-orange h2 {
            font-size: 1.8rem;
            color: #2c2c2c;
            text-align: center;
            margin-bottom: 20px;
            font-weight: 800;
        }

        /* Contenedor interno para los datos recibidos */
        .data-box {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            padding: 15px;
            margin-bottom: 20px;
        }

        .data-item {
            margin-bottom: 12px;
        }

        .data-item:last-child {
            margin-bottom: 0;
        }

        .data-item span.label {
            display: block;
            font-size: 0.85rem;
            color: #2c2c2c;
            font-weight: bold;
            text-transform: uppercase;
        }

        .data-item span.value {
            font-size: 1.1rem;
            font-weight: 600;
            color: #ffffff;
        }

        .badge-status {
            display: inline-block;
            background-color: #2e7d32;
            color: #ffffff;
            padding: 4px 10px;
            border-radius: 8px;
            font-size: 0.9rem;
            font-weight: bold;
            margin-top: 4px;
        }

        /* Botones alineados con el estilo gris del login */
        .btn-submit {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #4a4d52;
            color: #ffffff;
            border: none;
            border-radius: 12px;
            font-size: 1rem;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            transition: background-color 0.2s ease;
            margin-bottom: 10px;
        }

        .btn-submit:hover {
            background-color: #333538;
        }

        .back-link {
            text-align: center;
            margin-top: 10px;
        }

        .back-link a {
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

    <div class="response-wrapper">
        <!-- Columna Izquierda: Imagen del gimnasio -->
        <div class="image-container"></div>

        <!-- Columna Derecha: Tarjeta de Respuesta del Servlet -->
        <div class="form-container">
            <div class="card-orange">
                <h2>Estado del Socio</h2>

                <!-- Bloque donde se muestran los datos procesados -->
                <div class="data-box">
                    <div class="data-item">
                        <span class="label">Documento:</span>
                        <span class="value"><%= request.getParameter("documento") != null ? request.getParameter("documento") : "No proporcionado" %></span>
                    </div>

                    <div class="data-item">
                        <span class="label">Estado del Pase:</span>
                        <span class="badge-status">Socio Activo</span>
                    </div>

                    <div class="data-item">
                        <span class="label">Membresía:</span>
                        <span class="value">Plan Trimestral VIP</span>
                    </div>
                </div>

                <!-- Botones de navegación -->
                <a href="formulario.jsp" class="btn-submit">Nueva consulta</a>

                <div class="back-link">
                    <a href="index.jsp">Volver al inicio</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>