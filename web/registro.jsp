
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear cuenta | Vital Center</title>

    <style>
        :root {
            --naranja: #E08343;
            --naranja-oscuro: #C76B2E;
            --negro: #171717;
            --gris: #777;
            --fondo: #F7F7F7;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: Arial, Helvetica, sans-serif;
            background: var(--fondo);
            color: var(--negro);
        }

        .contenedor {
            min-height: 100vh;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        /* Panel izquierdo: imagen y marca */
        .panel-imagen {
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 42px;
            color: white;
            background:
                linear-gradient(
                    180deg,
                    rgba(0, 0, 0, 0.35),
                    rgba(0, 0, 0, 0.82)
                ),
                url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1400&q=85")
                center / cover no-repeat;
        }

        .marca {
            font-size: 25px;
            font-weight: 900;
            letter-spacing: 2px;
        }

        .marca span {
            color: var(--naranja);
        }

        .texto-imagen {
            max-width: 480px;
            margin-bottom: 35px;
        }

        .etiqueta {
            display: inline-block;
            padding: 9px 13px;
            border: 1px solid rgba(255, 255, 255, 0.45);
            border-radius: 30px;
            color: white;
            font-size: 12px;
            letter-spacing: 1.5px;
            text-transform: uppercase;
        }

        .texto-imagen h1 {
            margin: 22px 0 15px;
            font-size: clamp(34px, 4vw, 54px);
            line-height: 1.08;
        }

        .texto-imagen h1 span {
            color: var(--naranja);
        }

        .texto-imagen p {
            max-width: 390px;
            color: #e4e4e4;
            line-height: 1.8;
        }

        .frase {
            margin-top: 35px;
            padding-left: 15px;
            border-left: 3px solid var(--naranja);
            font-size: 14px;
            line-height: 1.7;
            color: #eee;
        }

        /* Panel derecho: formulario */
        .panel-formulario {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 35px 24px;
        }

        .formulario {
            width: 100%;
            max-width: 510px;
        }

        .volver {
            display: inline-block;
            margin-bottom: 25px;
            color: var(--gris);
            font-size: 14px;
            text-decoration: none;
        }

        .volver:hover {
            color: var(--naranja-oscuro);
        }

        .formulario h2 {
            margin: 0 0 10px;
            font-size: 32px;
        }

        .descripcion {
            margin: 0 0 28px;
            color: var(--gris);
            line-height: 1.6;
            font-size: 14px;
        }

        .campos {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 17px 15px;
        }

        .campo {
            display: flex;
            flex-direction: column;
            gap: 8px;
            min-width: 0;
        }

        .campo.completo {
            grid-column: 1 / -1;
        }

        label {
            font-size: 13px;
            font-weight: 700;
        }

        input {
            width: 100%;
            min-width: 0;
            padding: 13px 14px;
            border: 1px solid #dedede;
            border-radius: 8px;
            outline: none;
            background: white;
            color: var(--negro);
            font: inherit;
            font-size: 14px;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        input:focus {
            border-color: var(--naranja);
            box-shadow: 0 0 0 3px rgba(224, 131, 67, 0.13);
        }

        input::placeholder {
            color: #aaa;
        }

        .nota {
            margin: 19px 0;
            color: var(--gris);
            font-size: 12px;
            line-height: 1.6;
        }

        .boton {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 8px;
            background: var(--naranja);
            color: white;
            font-size: 15px;
            font-weight: 700;
            cursor: pointer;
            transition: background 0.2s, transform 0.2s;
        }

        .boton:hover {
            background: var(--naranja-oscuro);
            transform: translateY(-1px);
        }

        .pie-formulario {
            margin-top: 22px;
            text-align: center;
            color: var(--gris);
            font-size: 13px;
        }

        .pie-formulario a {
            color: var(--naranja-oscuro);
            font-weight: 700;
            text-decoration: none;
        }

        .pie-formulario a:hover {
            text-decoration: underline;
        }

        @media (max-width: 850px) {
            .contenedor {
                grid-template-columns: 0.85fr 1.15fr;
            }

            .panel-imagen {
                padding: 28px;
            }

            .panel-formulario {
                padding: 30px 20px;
            }
        }

        @media (max-width: 650px) {
            .contenedor {
                grid-template-columns: 1fr;
            }

            .panel-imagen {
                min-height: 290px;
                padding: 25px;
            }

            .marca {
                font-size: 21px;
            }

            .texto-imagen {
                margin: 45px 0 0;
            }

            .texto-imagen h1 {
                font-size: 34px;
            }

            .texto-imagen p,
            .frase {
                display: none;
            }

            .panel-formulario {
                padding: 35px 22px;
            }

            .formulario h2 {
                font-size: 28px;
            }
        }

        @media (max-width: 380px) {
            .campos {
                grid-template-columns: 1fr;
            }

            .campo.completo {
                grid-column: auto;
            }
        }
    </style>
</head>

<body>
    <main class="contenedor">

        <section class="panel-imagen">
            <a class="marca" href="${pageContext.request.contextPath}/index.jsp"
               style="color: white; text-decoration: none;">
                VITAL <span>CENTER.</span>
            </a>

            <div class="texto-imagen">
                <span class="etiqueta">Tu cambio comienza aquí</span>

                <h1>Construye tu mejor versión <span>con nosotros.</span></h1>

                <p>
                    Cada objetivo empieza con una decisión.
                    Registra tus datos y da el primer paso hacia una
                    vida más activa y saludable.
                </p>

                <div class="frase">
                    DISCIPLINA · CONSTANCIA · RESULTADOS
                </div>
            </div>
        </section>

        <section class="panel-formulario">
            <div class="formulario">

                <a class="volver"
                   href="${pageContext.request.contextPath}/index.jsp">
                    &#8592; Volver al inicio
                </a>

                <h2>Crear registro</h2>
                <p class="descripcion">
                    Completa tus datos personales para registrarte en Vital Center.
                    Los campos marcados son obligatorios.
                </p>

                <form action="${pageContext.request.contextPath}/ControllerServlet"
                      method="post" accept-charset="UTF-8">

                    <div class="campos">

                        <div class="campo">
                            <label for="nombres">Nombres *</label>
                            <input type="text" id="nombres" name="nombres"
                                   placeholder="Tus nombres" maxlength="100"
                                   autocomplete="given-name" required>
                        </div>

                        <div class="campo">
                            <label for="apellidos">Apellidos *</label>
                            <input type="text" id="apellidos" name="apellidos"
                                   placeholder="Tus apellidos" maxlength="100"
                                   autocomplete="family-name" required>
                        </div>

                        <div class="campo">
                            <label for="documento">Documento *</label>
                            <input type="text" id="documento" name="documento"
                                   placeholder="Número de documento" maxlength="20"
                                   autocomplete="off" required>
                        </div>

                        <div class="campo">
                            <label for="telefono">Teléfono *</label>
                            <input type="tel" id="telefono" name="telefono"
                                   placeholder="Tu número de contacto" maxlength="20"
                                   autocomplete="tel" required>
                        </div>

                        <div class="campo completo">
                            <label for="correo">Correo electrónico *</label>
                            <input type="email" id="correo" name="correo"
                                   placeholder="nombre@correo.com" maxlength="100"
                                   autocomplete="email" required>
                        </div>

                        <div class="campo completo">
                            <label for="fechaNacimiento">Fecha de nacimiento *</label>
                            <input type="date" id="fechaNacimiento"
                                   name="fechaNacimiento"
                                   autocomplete="bday" required>
                        </div>

                        <div class="campo completo">
                            <label for="direccion">Dirección</label>
                            <input type="text" id="direccion" name="direccion"
                                   placeholder="Dirección de residencia"
                                   maxlength="150" autocomplete="street-address">
                        </div>

                    </div>

                    <p class="nota">
                        Al enviar este formulario, tus datos personales se
                        almacenarán en el sistema de Vital Center con fines
                        académicos y de gestión de usuarios.
                    </p>

                    <button class="boton" type="submit">
                        Registrar mis datos &#8594;
                    </button>
                </form>

                <div class="pie-formulario">
                    ¿Ya tienes acceso?
                    <a href="${pageContext.request.contextPath}/formulario.jsp">
                        Inicia sesión
                    </a>
                </div>

            </div>
        </section>

    </main>
</body>
</html>