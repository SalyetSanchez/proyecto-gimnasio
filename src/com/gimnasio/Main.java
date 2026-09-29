package com.gimnasio;

import com.gimnasio.dao.UsuarioDAO;

public class Main {
    public static void main(String[] args) {
        UsuarioDAO usuarioDAO = new UsuarioDAO();

        System.out.println("=============================================");
        System.out.println("   PRUEBA DE MÓDULO DE USUARIOS (CRUD JDBC)  ");
        System.out.println("=============================================\n");

        System.out.println("--- 1. INSERTANDO NUEVO USUARIO ---");
        usuarioDAO.insertarUsuario(
            "Andrea", 
            "Morales", 
            "1018456789", 
            "3101234567", 
            "andrea.morales@correo.com", 
            "1998-05-15", 
            "Carrera 45 # 26-10", 
            "Activo"
        );

        System.out.println("\n--- 2. CONSULTANDO REGISTROS ---");
        usuarioDAO.consultarUsuarios();

        System.out.println("\n--- 3. ACTUALIZANDO USUARIO ---");
        usuarioDAO.actualizarUsuario(1, "3008889900", "Inactivo");

        System.out.println("\n--- CONSULTA TRAS ACTUALIZACIÓN ---");
        usuarioDAO.consultarUsuarios();
    }
}