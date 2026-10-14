
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesión | Vital Center</title>

    <style>
        :root {
            --naranja: #E08343;
            --naranja-oscuro: #C76B2E;
            --negro: #171717;
            --gris: #F8F9FA;
            --borde: #D8D8D8;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            background: var(--gris);
            color: var(--negro);
            font-family: Arial, Helvetica, sans-serif;
        }

        .contenedor {
            width: 100%;
            max-width: 1050px;
            min-height: 610px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            border-radius: 18px;
            background: white;
            box-shadow: 0 15px 45px rgba(0, 0, 0, 0.12);
        }

        .panel-imagen {
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 45px;
            color: white;
            background:
                linear-gradient(
                    0deg,
                    rgba(0, 0, 0, 0.88),
                    rgba(0, 0, 0, 0.12)
                ),
                linear-gradient(135deg, #37302b, #E08343);
        }

        .marca {
            margin-bottom: auto;
            font-size: 23px;
            font-weight: 800;
            letter-spacing: 1px;
        }

        .marca span {
            color: var(--naranja);
        }

        .panel-imagen h1 {
            margin: 0 0 15px;
            font-size: clamp(32px, 4vw, 46px);
            line-height: 1.1;
        }

        .panel-imagen p {
            max-width: 360px;
            line-height: 1.7;
            color: #eeeeee;
        }

        .panel-formulario {
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 55px 45px;
        }

        .panel-formulario h2 {
            margin: 0 0 10px;
            font-size: 30px;
        }

        .subtitulo {
            margin: 0 0 32px;
            color: #6d6d6d;
            line-height: 1.6;
        }

        .campo {
            margin-bottom: 21px;
        }

        label {
            display: block;
            margin-bottom: 9px;
            font-size: 14px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 14px 15px;
            border: 1px solid var(--borde);
            border-radius: 8px;
            outline: none;
            font-size: 15px;
        }

        input:focus {
            border-color: var(--naranja);
            box-shadow: 0 0 0 3px rgba(224, 131, 67, 0.15);
        }

        .clave-contenedor {
            display: flex;
            gap: 8px;
        }

        .clave-contenedor input {
            min-width: 0;
        }

        .mostrar-clave {
            padding: 0 12px;
            border: 1px solid var(--borde);
            border-radius: 8px;
            background: white;
            cursor: pointer;
        }

        .recordar {
            display: flex;
            align-items: center;
            gap: 9px;
            margin: 2px 0 25px;
            font-size: 14px;
            color: #555;
        }

        .recordar input {
            width: auto;
            accent-color: var(--naranja);
        }

        .boton {
            width: 100%;
            padding: 15px;
            border: 0;
            border-radius: 8px;
            background: var(--naranja);
            color: white;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 0.5px;
            cursor: pointer;
            transition: background 0.2s;
        }

        .boton:hover {
            background: var(--naranja-oscuro);
        }

        .boton:disabled {
            opacity: 0.65;
            cursor: wait;
        }

        .mensaje {
            display: none;
            margin: 18px 0 0;
            padding: 12px;
            border-radius: 8px;
            font-size: 14px;
            line-height: 1.5;
        }

        .mensaje.visible {
            display: block;
        }

        .mensaje.exito {
            color: #176534;
            background: #e8f6ec;
        }

        .mensaje.error {
            color: #9b2226;
            background: #fff0f0;
        }

        .volver {
            margin-top: 25px;
            text-align: center;
            font-size: 14px;
        }

        a {
            color: var(--naranja-oscuro);
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 760px) {
            body {
                padding: 12px;
            }

            .contenedor {
                max-width: 470px;
                grid-template-columns: 1fr;
            }

            .panel-imagen {
                min-height: 230px;
                padding: 28px;
            }

            .panel-imagen h1 {
                font-size: 31px;
            }

            .panel-formulario {
                padding: 35px 25px;
            }
        }
    </style>
</head>

<body>
    <main class="contenedor">

        <section class="panel-imagen">
            <div class="marca">VITAL <span>CENTER</span></div>

            <div>
                <h1>Tu esfuerzo.<br>Tu evolución.</h1>
                <p>
                    Cada día es una nueva oportunidad para acercarte
                    a la mejor versión de ti.
                </p>
            </div>
        </section>

        <section class="panel-formulario">
            <h2>¡Qué bueno verte!</h2>
            <p class="subtitulo">
                Ingresa tus datos para acceder a tu cuenta.
            </p>

            <form id="loginForm">
                <div class="campo">
                    <label for="usuario">Usuario</label>
                    <input
                        type="text"
                        id="usuario"
                        name="usuario"
                        placeholder="Ingresa tu usuario"
                        autocomplete="username"
                        required
                    >
                </div>

                <div class="campo">
                    <label for="clave">Contraseña</label>
                    <div class="clave-contenedor">
                        <input
                            type="password"
                            id="clave"
                            name="clave"
                            placeholder="Ingresa tu contraseña"
                            autocomplete="current-password"
                            required
                        >
                        <button
                            type="button"
                            id="mostrarClave"
                            class="mostrar-clave"
                            aria-label="Mostrar u ocultar contraseña"
                        >Ver</button>
                    </div>
                </div>

                <label class="recordar">
                    <input type="checkbox" id="recordarUsuario">
                    Recordar mi usuario en este dispositivo
                </label>

                <button type="submit" id="submitButton" class="boton">
                    INICIAR SESIÓN →
                </button>

                <div
                    id="message"
                    class="mensaje"
                    role="status"
                    aria-live="polite"
                ></div>
            </form>

            <div class="volver">
                <a href="${pageContext.request.contextPath}/index.jsp">
                    ← Volver al inicio
                </a>
            </div>
        </section>
    </main>

    <script>
        const contexto = "${pageContext.request.contextPath}";
        const loginForm = document.getElementById("loginForm");
        const usuarioInput = document.getElementById("usuario");
        const claveInput = document.getElementById("clave");
        const recordarUsuario = document.getElementById("recordarUsuario");
        const submitButton = document.getElementById("submitButton");
        const message = document.getElementById("message");
        const mostrarClave = document.getElementById("mostrarClave");

        function showMessage(texto, tipo) {
            message.textContent = texto;
            message.className = "mensaje visible " + tipo;
        }

        // Recordar el nombre de usuario, nunca la contraseña.
        try {
            const usuarioGuardado = localStorage.getItem("vitalCenterUsuario");

            if (usuarioGuardado) {
                usuarioInput.value = usuarioGuardado;
                recordarUsuario.checked = true;
            }
        } catch (error) {
            console.warn("El almacenamiento local no está disponible.");
        }

        mostrarClave.addEventListener("click", function () {
            const oculta = claveInput.type === "password";
            claveInput.type = oculta ? "text" : "password";
            mostrarClave.textContent = oculta ? "Ocultar" : "Ver";
        });

        loginForm.addEventListener("submit", async function (event) {
            event.preventDefault();

            message.className = "mensaje";
            message.textContent = "";
            submitButton.disabled = true;
            submitButton.textContent = "VERIFICANDO...";

            const datos = new URLSearchParams();
            datos.append("accion", "login");
            datos.append("usuario", usuarioInput.value.trim());
            datos.append("clave", claveInput.value);

            try {
                const response = await fetch(contexto + "/api/auth", {
                    method: "POST",
                    headers: {
                        "Content-Type":
                            "application/x-www-form-urlencoded;charset=UTF-8"
                    },
                    credentials: "same-origin",
                    body: datos.toString()
                });

                const result = await response.json();

                if (!response.ok || result.status !== "exito") {
                    throw new Error(
                        result.mensaje || "No fue posible iniciar sesión."
                    );
                }

                try {
                    if (recordarUsuario.checked) {
                        localStorage.setItem(
                            "vitalCenterUsuario",
                            usuarioInput.value.trim()
                        );
                    } else {
                        localStorage.removeItem("vitalCenterUsuario");
                    }
                } catch (error) {
                    console.warn("No fue posible guardar la preferencia.");
                }

                showMessage(
                    "¡Autenticación satisfactoria! Redirigiendo...",
                    "exito"
                );

                // La sesión se crea en el servlet antes de esta redirección.
                window.location.assign(contexto + "/respuesta.jsp");

            } catch (error) {
                showMessage(
                    error.message || "No fue posible conectar con el servidor.",
                    "error"
                );

                submitButton.disabled = false;
                submitButton.textContent = "INICIAR SESIÓN →";
            }
        });
    </script>
</body>
</html>