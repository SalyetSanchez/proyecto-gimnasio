package com.gimnasio;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String documento = request.getParameter("documento");
        
        request.setAttribute("tipoPeticion", "GET");
        request.setAttribute("mensaje", "Se realizó la búsqueda para el documento: " + documento);
        
        request.getRequestDispatcher("respuesta.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String rol = request.getParameter("rol");

        request.setAttribute("tipoPeticion", "POST");
        request.setAttribute("nombre", nombre);
        request.setAttribute("correo", correo);
        request.setAttribute("rol", rol);
        request.setAttribute("mensaje", "¡Usuario guardado correctamente!");

        request.getRequestDispatcher("respuesta.jsp").forward(request, response);
    }
}