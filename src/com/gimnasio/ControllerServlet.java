package com.gimnasio;

import java.io.IOException;

import com.gimnasio.dao.UsuarioDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        response.sendRedirect(
            request.getContextPath() + "/registro.jsp"
        );
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nombres = limpiar(request.getParameter("nombres"));
        String apellidos = limpiar(request.getParameter("apellidos"));
        String documento = limpiar(request.getParameter("documento"));
        String telefono = limpiar(request.getParameter("telefono"));
        String correo = limpiar(request.getParameter("correo"));
        String fechaNacimiento = limpiar(
            request.getParameter("fechaNacimiento")
        );
        String direccion = limpiar(request.getParameter("direccion"));

        // Validar los campos obligatorios.
if (!ValidacionesRegistro.camposObligatoriosCompletos(
        nombres,
        apellidos,
        documento,
        telefono,
        correo,
        fechaNacimiento)) {
            mostrarResultado(
                request, response,
                HttpServletResponse.SC_BAD_REQUEST,
                "Campos incompletos",
                "Completa todos los campos obligatorios."
            );
            return;
        }

        // Validar el formato de la fecha y evitar fechas futuras.
if (!ValidacionesRegistro.fechaNacimientoValida(fechaNacimiento)) {
    mostrarResultado(
        request, response,
        HttpServletResponse.SC_BAD_REQUEST,
        "Fecha no válida",
        "Ingresa una fecha de nacimiento válida que no sea futura."
    );
    return;
}

        // Integrar el controlador con el DAO y la base de datos.
        UsuarioDAO usuarioDAO = new UsuarioDAO();

        boolean guardado = usuarioDAO.insertarUsuario(
            nombres,
            apellidos,
            documento,
            telefono,
            correo,
            fechaNacimiento,
            direccion.isEmpty() ? null : direccion,
            "Activo"
        );

        if (guardado) {
            mostrarResultado(
                request, response,
                HttpServletResponse.SC_OK,
                "¡Registro exitoso!",
                "Tus datos se guardaron correctamente en Vital Center."
            );
        } else {
            mostrarResultado(
                request, response,
                HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                "No se pudo completar el registro",
                "No fue posible guardar tus datos. Verifica la conexión "
                    + "con la base de datos y los registros existentes."
            );
        }
    }

    private String limpiar(String valor) {
        return valor == null ? "" : valor.trim();
    }

    private void mostrarResultado(
            HttpServletRequest request,
            HttpServletResponse response,
            int codigo,
            String titulo,
            String mensaje
    ) throws IOException {

        response.setStatus(codigo);
        response.setContentType("text/html;charset=UTF-8");

        String contexto = request.getContextPath();

        try (var out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang=\"es\">");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<meta name=\"viewport\" "
                + "content=\"width=device-width, initial-scale=1.0\">");
            out.println("<title>" + titulo + " | Vital Center</title>");

            out.println("<style>");
            out.println("*{box-sizing:border-box}");
            out.println("body{margin:0;min-height:100vh;display:flex;"
                + "align-items:center;justify-content:center;padding:24px;"
                + "background:#f7f7f7;color:#171717;"
                + "font-family:Arial,Helvetica,sans-serif}");
            out.println(".tarjeta{max-width:520px;width:100%;"
                + "padding:42px 30px;background:white;border-radius:16px;"
                + "text-align:center;box-shadow:0 12px 40px "
                + "rgba(0,0,0,.08)}");
            out.println(".marca{font-size:22px;font-weight:900;"
                + "letter-spacing:2px;margin-bottom:28px}");
            out.println(".marca span{color:#E08343}");
            out.println("h1{font-size:28px;margin-bottom:14px}");
            out.println("p{color:#666;line-height:1.7}");
            out.println(".boton{display:inline-block;margin-top:22px;"
                + "padding:13px 20px;background:#E08343;color:white;"
                + "border-radius:8px;text-decoration:none;font-weight:bold}");
            out.println(".boton:hover{background:#C76B2E}");
            out.println("</style>");

            out.println("</head><body>");
            out.println("<main class=\"tarjeta\">");
            out.println("<div class=\"marca\">VITAL "
                + "<span>CENTER.</span></div>");
            out.println("<h1>" + titulo + "</h1>");
            out.println("<p>" + mensaje + "</p>");

            out.println("<a class=\"boton\" href=\""
                + contexto + "/registro.jsp\">Volver al registro</a>");

            out.println("<p><a href=\"" + contexto
                + "/index.jsp\">Ir al inicio</a></p>");

            out.println("</main></body></html>");
        }
    }
}