package com.gimnasio;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/api/auth")
public class AuthServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Usuarios temporales para las pruebas locales.
    private static final Map<String, String> usuariosBD = new HashMap<>();

    static {
        usuariosBD.put("admin", "12345");
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String accion = request.getParameter("accion");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        if (usuario == null || usuario.trim().isEmpty()
                || clave == null || clave.isEmpty()) {

            enviarRespuesta(response, HttpServletResponse.SC_BAD_REQUEST,
                    "error", "Debes ingresar el usuario y la contraseña.");
            return;
        }

        usuario = usuario.trim();

        if ("register".equalsIgnoreCase(accion)) {

            synchronized (usuariosBD) {
                if (usuariosBD.containsKey(usuario)) {
                    enviarRespuesta(response,
                            HttpServletResponse.SC_CONFLICT,
                            "error", "Este usuario ya está registrado.");
                    return;
                }

                usuariosBD.put(usuario, clave);
            }

            enviarRespuesta(response, HttpServletResponse.SC_CREATED,
                    "exito", "Usuario registrado correctamente.");
            return;
        }

        if ("login".equalsIgnoreCase(accion)) {

            String claveGuardada;

            synchronized (usuariosBD) {
                claveGuardada = usuariosBD.get(usuario);
            }

            if (claveGuardada != null && claveGuardada.equals(clave)) {

                // Crear la sesión para recordar que el usuario inició sesión.
                HttpSession session = request.getSession(true);
                session.setAttribute("usuario", usuario);
                session.setMaxInactiveInterval(30 * 60);

                enviarRespuesta(response, HttpServletResponse.SC_OK,
                        "exito", "Autenticación satisfactoria.");
            } else {
                enviarRespuesta(response,
                        HttpServletResponse.SC_UNAUTHORIZED,
                        "error", "Usuario o contraseña incorrectos.");
            }

            return;
        }

        enviarRespuesta(response, HttpServletResponse.SC_BAD_REQUEST,
                "error", "Acción no válida.");
    }

    private void enviarRespuesta(
            HttpServletResponse response,
            int codigo,
            String estado,
            String mensaje
    ) throws IOException {

        response.setStatus(codigo);

        String mensajeSeguro = mensaje
                .replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\n", "\\n")
                .replace("\r", "\\r");

        try (PrintWriter out = response.getWriter()) {
            out.print("{\"status\":\"" + estado
                    + "\",\"mensaje\":\"" + mensajeSeguro + "\"}");
        }
    }
}
