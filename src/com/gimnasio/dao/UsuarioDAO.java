package com.gimnasio.dao;

import com.gimnasio.util.ConexionDB;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    private ConexionDB conexionDB;

    public UsuarioDAO() {
        this.conexionDB = new ConexionDB();
    }

    public boolean insertarUsuario(String nombres, String apellidos, String documento, String telefono, String correo, String fechaNacimiento, String direccion, String estado) {
        String sql = "INSERT INTO usuarios (nombres, apellidos, documento, telefono, correo, fecha_nacimiento, direccion, estado) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = conexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, nombres);
            pstmt.setString(2, apellidos);
            pstmt.setString(3, documento);
            pstmt.setString(4, telefono);
            pstmt.setString(5, correo);
            pstmt.setDate(6, Date.valueOf(fechaNacimiento));
            pstmt.setString(7, direccion);
            pstmt.setString(8, estado);

            pstmt.executeUpdate();
            System.out.println("✅ Usuario insertado correctamente.");
            return true;
        } catch (SQLException e) {
            System.out.println("❌ Error al insertar usuario: " + e.getMessage());
            return false;
        }
    }

    public void consultarUsuarios() {
        String sql = "SELECT * FROM usuarios";
        try (Connection conn = conexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            System.out.println("\n--- LISTA DE USUARIOS REGISTRADOS ---");
            while (rs.next()) {
                System.out.println("ID: " + rs.getInt("id_usuario") +
                                   " | Nombre: " + rs.getString("nombres") + " " + rs.getString("apellidos") +
                                   " | Documento: " + rs.getString("documento") +
                                   " | Teléfono: " + rs.getString("telefono") +
                                   " | Correo: " + rs.getString("correo") +
                                   " | Estado: " + rs.getString("estado"));
            }
        } catch (SQLException e) {
            System.out.println("❌ Error al consultar usuarios: " + e.getMessage());
        }
    }

    public boolean actualizarUsuario(int idUsuario, String nuevoTelefono, String nuevoEstado) {
        String sql = "UPDATE usuarios SET telefono = ?, estado = ? WHERE id_usuario = ?";
        try (Connection conn = conexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, nuevoTelefono);
            pstmt.setString(2, nuevoEstado);
            pstmt.setInt(3, idUsuario);

            pstmt.executeUpdate();
            System.out.println("✅ Usuario con ID " + idUsuario + " actualizado correctamente.");
            return true;
        } catch (SQLException e) {
            System.out.println("❌ Error al actualizar usuario: " + e.getMessage());
            return false;
        }
    }

    public boolean eliminarUsuario(int idUsuario) {
        String sql = "DELETE FROM usuarios WHERE id_usuario = ?";
        try (Connection conn = conexionDB.conectar();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, idUsuario);
            pstmt.executeUpdate();
            System.out.println("✅ Usuario con ID " + idUsuario + " eliminado correctamente.");
            return true;
        } catch (SQLException e) {
            System.out.println("❌ Error al eliminar usuario: " + e.getMessage());
            return false;
        }
    }
}