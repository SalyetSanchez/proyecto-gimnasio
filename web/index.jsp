
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Vital Center, un espacio para entrenar, crecer y superar tus límites.">
    <title>Vital Center | Supera tus límites</title>

    <style>
        :root {
            --orange: #E08343;
            --orange-dark: #C76B2E;
            --black: #171717;
            --dark: #222222;
            --white: #FFFFFF;
            --gray: #F8F9FA;
            --gray-input: #D8D8D8;
            --muted: #777777;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            color: var(--black);
            background: var(--white);
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            width: 100%;
            object-fit: cover;
        }

        /* BARRA SUPERIOR */

        .navbar {
            min-height: 72px;
            padding: 12px 6%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            background: var(--white);
            position: sticky;
            top: 0;
            z-index: 100;
            box-shadow: 0 3px 18px #0000000c;
        }

        .logo {
            font-size: 21px;
            font-weight: 900;
            letter-spacing: -0.8px;
            white-space: nowrap;
        }

        .logo span {
            color: var(--orange);
        }

        .nav-links {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 25px;
        }

        .nav-links a {
            font-size: 13px;
            font-weight: 650;
            transition: color 0.2s;
        }

        .nav-links a:hover {
            color: var(--orange-dark);
        }

        .login-btn,
        .primary-btn {
            display: inline-block;
            background: var(--orange);
            color: var(--white);
            padding: 11px 21px;
            border: 2px solid var(--orange);
            border-radius: 9px;
            font-size: 14px;
            font-weight: 750;
            text-align: center;
            transition: 0.2s;
        }

        .login-btn:hover,
        .primary-btn:hover {
            background: var(--orange-dark);
            border-color: var(--orange-dark);
            transform: translateY(-2px);
        }

        /* PORTADA PRINCIPAL */

        .hero {
            min-height: 590px;
            padding: 90px 8%;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            color: var(--white);
            background:
                linear-gradient(
                    90deg,
                    rgba(17, 17, 17, 0.96) 0%,
                    rgba(23, 23, 23, 0.78) 48%,
                    rgba(23, 23, 23, 0.18) 100%
                ),
                url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1800&q=85")
                center 45% / cover no-repeat;
        }

        .hero-content {
            max-width: 650px;
        }

        .eyebrow {
            color: var(--orange);
            font-size: 12px;
            font-weight: 850;
            letter-spacing: 3px;
            text-transform: uppercase;
        }

        .hero h1 {
            margin: 20px 0;
            font-size: clamp(42px, 6vw, 76px);
            line-height: 1.03;
            font-weight: 900;
            letter-spacing: -2px;
        }

        .hero h1 span {
            color: var(--orange);
        }

        .hero p {
            max-width: 490px;
            margin-bottom: 28px;
            color: #e5e5e5;
            font-size: 16px;
        }

        .secondary-btn {
            display: inline-block;
            margin-left: 10px;
            padding: 11px 21px;
            border: 2px solid #ffffffa6;
            border-radius: 9px;
            color: var(--white);
            font-size: 14px;
            font-weight: 700;
            transition: 0.2s;
        }

        .secondary-btn:hover {
            color: var(--black);
            background: var(--white);
        }

        /* FRANJA DESTACADA */

        .highlights {
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 23px 7%;
            color: var(--white);
            background: var(--orange);
            text-align: center;
        }

        .highlight {
            min-width: 150px;
        }

        .highlight strong {
            display: block;
            font-size: 21px;
        }

        .highlight span {
            font-size: 12px;
            font-weight: 600;
        }

        /* SECCIONES */

        .section {
            padding: 80px 8%;
        }

        .section-heading {
            max-width: 650px;
            margin: 0 auto 40px;
            text-align: center;
        }

        .section-heading h2 {
            margin: 10px 0 13px;
            font-size: clamp(29px, 4vw, 42px);
            line-height: 1.2;
            letter-spacing: -1px;
        }

        .section-heading p {
            color: var(--muted);
            font-size: 15px;
        }

        /* SERVICIOS */

        .services {
            background: var(--gray);
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 24px;
        }

        .service-card {
            overflow: hidden;
            border-radius: 16px;
            background: var(--white);
            box-shadow: 0 8px 28px #0000000b;
            transition: transform 0.25s, box-shadow 0.25s;
        }

        .service-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 14px 32px #00000015;
        }

        .service-card img {
            height: 220px;
            transition: transform 0.35s;
        }

        .service-card:hover img {
            transform: scale(1.035);
        }

        .service-content {
            padding: 22px;
        }

        .service-content h3 {
            margin-bottom: 8px;
            font-size: 20px;
        }

        .service-content p {
            margin-bottom: 14px;
            color: var(--muted);
            font-size: 14px;
        }

        .text-link {
            color: var(--orange-dark);
            font-size: 13px;
            font-weight: 800;
        }

        .text-link:hover {
            text-decoration: underline;
        }

        /* SOBRE NOSOTROS */

        .about {
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 60px;
        }

        .about-image {
            position: relative;
        }

        .about-image img {
            height: 400px;
            border-radius: 17px;
        }

        .about-image::after {
            content: "";
            position: absolute;
            right: -12px;
            bottom: -12px;
            z-index: -1;
            width: 85px;
            height: 85px;
            border-radius: 15px;
            background: var(--orange);
        }

        .about-copy h2 {
            margin: 12px 0 18px;
            font-size: clamp(30px, 4vw, 42px);
            line-height: 1.15;
        }

        .about-copy p {
            margin-bottom: 15px;
            color: var(--muted);
            font-size: 15px;
        }

        .about-copy .primary-btn {
            margin-top: 9px;
        }

        /* EQUIPO */

        .team {
            color: var(--white);
            background: var(--black);
        }

        .team .section-heading p {
            color: #c5c5c5;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 24px;
        }

        .team-card {
            overflow: hidden;
            border: 1px solid #ffffff12;
            border-radius: 15px;
            background: var(--dark);
            text-align: center;
        }

        .team-card img {
            height: 290px;
            object-position: center 30%;
        }

        .team-info {
            padding: 21px;
        }

        .team-info h3 {
            font-size: 18px;
        }

        .team-info p {
            margin-top: 5px;
            color: var(--orange);
            font-size: 13px;
        }

        /* INVITACIÓN */

        .join {
            padding: 65px 8%;
            color: var(--white);
            background: var(--orange);
            text-align: center;
        }

        .join h2 {
            margin-bottom: 10px;
            font-size: clamp(28px, 4vw, 40px);
        }

        .join p {
            margin-bottom: 23px;
        }

        .join .primary-btn {
            border-color: var(--black);
            background: var(--black);
        }

        .join .primary-btn:hover {
            border-color: #333333;
            background: #333333;
        }

        /* FOOTER */

        .footer {
            padding: 48px 7% 20px;
            color: #c5c5c5;
            background: #101010;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.4fr 1fr 1fr 0.8fr;
            gap: 35px;
            padding-bottom: 35px;
        }

        .footer-brand p {
            max-width: 250px;
            margin-top: 13px;
            font-size: 13px;
        }

        .footer-column {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            gap: 9px;
            font-size: 13px;
        }

        .footer-column h3 {
            margin-bottom: 7px;
            color: var(--white);
            font-size: 15px;
        }

        .footer-column a:hover,
        .footer-bottom a:hover {
            color: var(--orange);
        }

        .footer-bottom {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            padding-top: 20px;
            border-top: 1px solid #ffffff20;
            font-size: 12px;
        }

        /* TABLETAS */

        @media (max-width: 950px) {
            .navbar {
                padding-right: 4%;
                padding-left: 4%;
                gap: 15px;
            }

            .nav-links {
                gap: 14px;
            }

            .nav-links a {
                font-size: 12px;
            }

            .service-grid,
            .team-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .footer-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .about {
                gap: 35px;
            }
        }

        /* CELULARES */

        @media (max-width: 650px) {
            .navbar {
                position: relative;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .logo {
                font-size: 19px;
            }

            .nav-links {
                order: 3;
                width: 100%;
                flex-wrap: wrap;
                justify-content: center;
                gap: 10px 17px;
                padding: 8px 0 3px;
            }

            .nav-links a {
                font-size: 12px;
            }

            .login-btn {
                padding: 8px 14px;
                font-size: 12px;
            }

            .hero {
                min-height: 510px;
                padding: 65px 7%;
                background-position: 60% center;
            }

            .hero h1 {
                font-size: clamp(40px, 12vw, 58px);
                letter-spacing: -1px;
            }

            .hero p {
                font-size: 14px;
            }

            .secondary-btn {
                margin: 12px 0 0;
            }

            .highlights {
                gap: 20px 10px;
                padding: 22px 4%;
            }

            .highlight {
                min-width: 40%;
            }

            .section {
                padding: 58px 6%;
            }

            .service-grid,
            .team-grid,
            .about {
                grid-template-columns: 1fr;
            }

            .service-card img {
                height: 230px;
            }

            .about-image img {
                height: 290px;
            }

            .team-card img {
                height: 300px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 28px;
            }

            .footer-bottom {
                flex-direction: column;
            }
        }
    </style>
</head>

<body>

    <!-- BARRA DE NAVEGACIÓN -->
    <header class="navbar">
        <a class="logo" href="#inicio">VITAL<span>CENTER.</span></a>

        <nav class="nav-links" aria-label="Navegación principal">
            <a href="#inicio">Inicio</a>
            <a href="#nosotros">Sobre nosotros</a>
            <a href="#servicios">Servicios</a>
            <a href="#equipo">Nuestro equipo</a>
        </nav>

        <a class="login-btn" href="formulario.jsp">Login ↗</a>
    </header>

    <main>

        <!-- PORTADA -->
        <section class="hero" id="inicio">
            <div class="hero-content">
                <span class="eyebrow">Tu cambio empieza hoy</span>

                <h1>
                    SUPERA TUS<br>
                    <span>LÍMITES.</span>
                </h1>

                <p>
                    Más que un gimnasio, un espacio para crecer,
                    fortalecerte y construir la mejor versión de ti.
                </p>

                <a class="primary-btn" href="#servicios">
                    Descubre nuestros servicios ↗
                </a>

                <a class="secondary-btn" href="#nosotros">
                    Conócenos
                </a>
            </div>
        </section>

        <!-- FRANJA DE CARACTERÍSTICAS -->
        <section class="highlights" aria-label="Características">
            <div class="highlight">
                <strong>Tu ritmo</strong>
                <span>Entrena a tu manera</span>
            </div>

            <div class="highlight">
                <strong>Tu fuerza</strong>
                <span>Construye nuevos hábitos</span>
            </div>

            <div class="highlight">
                <strong>Tu progreso</strong>
                <span>Supera tus propios retos</span>
            </div>
        </section>

        <!-- SERVICIOS -->
        <section class="section services" id="servicios">
            <div class="section-heading">
                <span class="eyebrow">Entrena a tu manera</span>
                <h2>Encuentra tu fuerza</h2>
                <p>
                    Descubre diferentes formas de moverte y avanzar
                    hacia tus objetivos.
                </p>
            </div>

            <div class="service-grid">

                <article class="service-card">
                    <img
                        src="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=800&q=80"
                        alt="Entrenamiento de fuerza con pesas"
                        loading="lazy">

                    <div class="service-content">
                        <h3>Entrenamiento de fuerza</h3>
                        <p>
                            Trabaja tu fuerza y desarrolla una rutina
                            adaptada a tus objetivos.
                        </p>
                        <a class="text-link" href="#equipo">Conoce más ↗</a>
                    </div>
                </article>

                <article class="service-card">
                    <img
                        src="https://images.unsplash.com/photo-1538805060514-97d9cc17730c?auto=format&fit=crop&w=800&q=80"
                        alt="Persona entrenando resistencia física"
                        loading="lazy">

                    <div class="service-content">
                        <h3>Cardio y resistencia</h3>
                        <p>
                            Muévete, mejora tu resistencia y encuentra
                            nuevos retos cada día.
                        </p>
                        <a class="text-link" href="#equipo">Conoce más ↗</a>
                    </div>
                </article>

                <article class="service-card">
                    <img
                        src="https://images.unsplash.com/photo-1517836357463-d25dfeac3438?auto=format&fit=crop&w=800&q=80"
                        alt="Sesión de entrenamiento físico"
                        loading="lazy">

                    <div class="service-content">
                        <h3>Entrenamiento funcional</h3>
                        <p>
                            Trabaja tu movilidad, coordinación y control
                            mediante ejercicios variados.
                        </p>
                        <a class="text-link" href="#equipo">Conoce más ↗</a>
                    </div>
                </article>

            </div>
        </section>

        <!-- SOBRE NOSOTROS -->
        <section class="section about" id="nosotros">
            <div class="about-image">
                <img
                    src="https://images.unsplash.com/photo-1571902943202-507ec2618e8f?auto=format&fit=crop&w=1000&q=85"
                    alt="Instalaciones de entrenamiento"
                    loading="lazy">
            </div>

            <div class="about-copy">
                <span class="eyebrow">Conoce Vital Center</span>

                <h2>Un espacio para<br>superarte cada día.</h2>

                <p>
                    En Vital Center creemos que cada persona tiene
                    su propio camino. Queremos ofrecerte un espacio
                    donde puedas entrenar, aprender y trabajar por tus metas.
                </p>

                <p>
                    Nuestro propósito es acompañarte con constancia,
                    disciplina y una actitud positiva en cada entrenamiento.
                </p>

                <a class="primary-btn" href="#equipo">
                    Conoce al equipo ↗
                </a>
            </div>
        </section>

        <!-- EQUIPO -->
        <section class="section team" id="equipo">
            <div class="section-heading">
                <span class="eyebrow">Personas que te impulsan</span>
                <h2>Conoce nuestro equipo</h2>
                <p>
                    Un equipo dispuesto a acompañarte en tu proceso
                    de entrenamiento.
                </p>
            </div>

            <div class="team-grid">

                <article class="team-card">
                    <img
                        src="https://images.unsplash.com/photo-1567013127542-490d757e51fc?auto=format&fit=crop&w=800&q=80"
                        alt="Imagen de entrenamiento personal"
                        loading="lazy">

                    <div class="team-info">
                        <h3>Entrenamiento personal</h3>
                        <p>Fuerza y técnica</p>
                    </div>
                </article>

                <article class="team-card">
                    <img
                        src="https://images.unsplash.com/photo-1594381898411-846e7d193883?auto=format&fit=crop&w=800&q=80"
                        alt="Imagen de entrenamiento físico"
                        loading="lazy">

                    <div class="team-info">
                        <h3>Entrenamiento funcional</h3>
                        <p>Movilidad y resistencia</p>
                    </div>
                </article>

                <article class="team-card">
                    <img
                        src="https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?auto=format&fit=crop&w=800&q=80"
                        alt="Personas entrenando en un gimnasio"
                        loading="lazy">

                    <div class="team-info">
                        <h3>Acompañamiento físico</h3>
                        <p>Motivación y progreso</p>
                    </div>
                </article>

            </div>
        </section>

        <!-- LLAMADO A LA ACCIÓN -->
        <section class="join">
            <h2>¿Listo para comenzar?</h2>
            <p>Tu siguiente versión empieza con una decisión.</p>
            <a class="primary-btn" href="formulario.jsp">
                Entra a Vital Center ↗
            </a>
        </section>

    </main>

    <!-- PIE DE PÁGINA -->
    <footer class="footer">

        <div class="footer-grid">

            <div class="footer-brand">
                <a class="logo" href="#inicio">VITAL<span>CENTER.</span></a>
                <p>
                    Entrena a tu ritmo. Construye tu mejor versión.
                    Cada día es una oportunidad para avanzar.
                </p>
            </div>

            <div class="footer-column">
                <h3>Contacto</h3>
                <p>📍 Bogotá, Colombia</p>
                <p>📞 [Teléfono del gimnasio]</p>
                <p>✉️ [Correo de contacto]</p>
            </div>

            <div class="footer-column">
                <h3>Horario</h3>
                <p>Lunes a viernes: [Horario]</p>
                <p>Sábados: [Horario]</p>
                <p>Domingos: [Horario]</p>
            </div>

            <div class="footer-column">
                <h3>Síguenos</h3>
                <a href="#" target="_blank" rel="noopener">Instagram ↗</a>
                <a href="#" target="_blank" rel="noopener">Facebook ↗</a>
                <a href="#" target="_blank" rel="noopener">TikTok ↗</a>
            </div>

        </div>

        <div class="footer-bottom">
            <span>© 2026 Vital Center. Proyecto académico.</span>
            <a href="#inicio">Volver arriba ↑</a>
        </div>

    </footer>

</body>
</html>
