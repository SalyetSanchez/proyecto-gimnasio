<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String usuario = (String) session.getAttribute("usuario");

    if (usuario == null || usuario.trim().isEmpty()) {
        response.sendRedirect(
            request.getContextPath() + "/formulario.jsp"
        );
        return;
    }

    String usuarioSeguro = usuario
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace("\"", "&quot;")
        .replace("'", "&#39;");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenida | Vital Center</title>

    <style>
        :root {
            --naranja: #E08343;
            --naranja-oscuro: #C76B2E;
            --negro: #171717;
            --gris: #F8F9FA;
        }

        * {
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            background: var(--gris);
            color: var(--negro);
            font-family: Arial, Helvetica, sans-serif;
        }

        .tarjeta {
            width: 100%;
            max-width: 650px;
            padding: 55px 35px;
            border-radius: 18px;
            background: white;
            text-align: center;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.09);
        }

        .marca {
            margin-bottom: 35px;
            font-size: 22px;
            font-weight: 800;
            letter-spacing: 1px;
        }

        .marca span {
            color: var(--naranja);
        }

        .icono {
            width: 76px;
            height: 76px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 25px;
            border-radius: 50%;
            background: #fff0e5;
            color: var(--naranja-oscuro);
            font-size: 38px;
        }

        h1 {
            margin: 0 0 15px;
            font-size: clamp(28px, 5vw, 40px);
        }

        p {
            color: #666;
            line-height: 1.7;
        }

        .usuario {
            color: var(--naranja-oscuro);
        }

        .botones {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 12px;
            margin-top: 30px;
        }

        .boton {
            display: inline-block;
            padding: 14px 22px;
            border-radius: 8px;
            background: var(--naranja);
            color: white;
            font-weight: bold;
            text-decoration: none;
        }

        .boton:hover {
            background: var(--naranja-oscuro);
        }

        .boton-secundario {
            border: 1px solid #ddd;
            background: white;
            color: var(--negro);
        }

        .boton-secundario:hover {
            background: #f1f1f1;
        }
    </style>
</head>

<body>
    <main class="tarjeta">
        <div class="marca">VITAL <span>CENTER</span></div>

        <div class="icono" aria-hidden="true">&#10003;</div>

        <h1>¡Bienvenido a Vital Center!</h1>

        <p>
            Hola, <strong class="usuario"><%= usuarioSeguro %></strong>.
            <br>
            Has iniciado sesión correctamente.
        </p>

        <p>
            Tu espacio para avanzar hacia tus objetivos
            de entrenamiento comienza aquí.
        </p>

        <div class="botones">
            <a
                class="boton"
                href="<%= request.getContextPath() %>/index.jsp"
            >Volver al inicio</a>

            <a
                class="boton boton-secundario"
                href="<%= request.getContextPath() %>/cerrar-sesion"
            >Cerrar sesión</a>
        </div>
    </main>
</body>
</html>