<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gimnasio Fitness - Panel Principal</title>
    <style>
        /* Estilos base y variables de diseño */
        :root {
            --primary-color: #1e88e5;
            --primary-dark: #1565c0;
            --secondary-color: #26a69a;
            --bg-color: #f4f6f9;
            --card-bg: #ffffff;
            --text-color: #333333;
            --text-muted: #666666;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--bg-color);
            margin: 0;
            padding: 0;
            color: var(--text-color);
        }

        /* Barra de navegación superior */
        .navbar {
            background-color: #0f172a;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar .brand {
            font-size: 1.4rem;
            font-weight: bold;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar .user-info {
            font-size: 0.95rem;
            color: #94a3b8;
        }

        /* Contenedor principal */
        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .welcome-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .welcome-header h1 {
            font-size: 2rem;
            color: #0f172a;
            margin-bottom: 8px;
        }

        .welcome-header p {
            color: var(--text-muted);
            font-size: 1.05rem;
        }

        /* Rejilla de tarjetas / Módulos */
        .grid-modules {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .card-module {
            background-color: var(--card-bg);
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .card-module:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .card-module .icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .card-module h3 {
            margin: 0 0 10px 0;
            color: #0f172a;
            font-size: 1.25rem;
        }

        .card-module p {
            color: var(--text-muted);
            font-size: 0.95rem;
            line-height: 1.5;
            margin-bottom: 20px;
            flex-grow: 1;
        }

        /* Botones de acción */
        .btn-action {
            display: inline-block;
            text-align: center;
            background-color: var(--primary-color);
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 6px;
            font-weight: 600;
            transition: background-color 0.2s ease;
        }

        .btn-action:hover {
            background-color: var(--primary-dark);
        }

        .btn-disabled {
            background-color: #cbd5e1;
            color: #64748b;
            cursor: not-allowed;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 60px;
            padding: 20px;
            color: #94a3b8;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

    <!-- Header / Navbar -->
    <header class="navbar">
        <div class="brand">
            <span>🏋️‍♂️</span> GymFitness System
        </div>
        <div class="user-info">
            <span>Rol: Recepción / Administración</span>
        </div>
    </header>

    <!-- Contenido Principal -->
    <main class="container">
        
        <section class="welcome-header">
            <h1>Panel de Control Operativo</h1>
            <p>Selecciona una opción para gestionar la atención e ingreso de socios al gimnasio.</p>
        </section>

        <!-- Tarjetas de Módulos -->
        <div class="grid-modules">
            
            <!-- Módulo 1: Consulta de Socios (Módulo funcional actual) -->
            <article class="card-module">
                <div>
                    <div class="icon">🔍</div>
                    <h3>Consulta & Validación</h3>
                    <p>Verifica el estado de la membresía de un socio mediante su número de documento de identidad.</p>
                </div>
                <a href="formulario.jsp" class="btn-action">Acceder al Buscador</a>
            </article>

            <!-- Módulo 2: Registro de Socios -->
            <article class="card-module">
                <div>
                    <div class="icon">👤</div>
                    <h3>Registro de Usuarios</h3>
                    <p>Inscribe nuevos clientes en la plataforma, captura sus datos personales y asigna pases de ingreso.</p>
                </div>
                <a href="#" class="btn-action btn-disabled">Próximamente</a>
            </article>

            <!-- Módulo 3: Control de Membresías -->
            <article class="card-module">
                <div>
                    <div class="icon">💳</div>
                    <h3>Planes y Pagos</h3>
                    <p>Gestiona la renovación de membresías, facturación mensual y estado de cuenta de los afiliados.</p>
                </div>
                <a href="#" class="btn-action btn-disabled">Próximamente</a>
            </article>

        </div>

    </main>

    <!-- Pie de página -->
    <footer class="footer">
        <p>&copy; 2026 Sistema de Gestión para Gimnasio | Evidencia SENA ADSO</p>
    </footer>

</body>
</html>