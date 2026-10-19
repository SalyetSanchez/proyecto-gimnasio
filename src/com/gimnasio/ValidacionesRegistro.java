
package com.gimnasio;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;

public final class ValidacionesRegistro {

    private ValidacionesRegistro() {
        // Evita crear objetos de esta clase utilitaria.
    }

    public static boolean camposObligatoriosCompletos(
            String... valores) {

        if (valores == null) {
            return false;
        }

        for (String valor : valores) {
            if (valor == null || valor.trim().isEmpty()) {
                return false;
            }
        }

        return true;
    }

    public static boolean fechaNacimientoValida(String fechaTexto) {
        if (fechaTexto == null || fechaTexto.trim().isEmpty()) {
            return false;
        }

        try {
            LocalDate fecha = LocalDate.parse(fechaTexto);
            return !fecha.isAfter(LocalDate.now());
        } catch (DateTimeParseException e) {
            return false;
        }
    }
}