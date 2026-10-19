
package com.gimnasio;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

class ValidacionesRegistroTest {

    @Test
    void aceptaCamposObligatoriosCompletos() {
        assertTrue(
            ValidacionesRegistro.camposObligatoriosCompletos(
                "Ana",
                "Pérez",
                "12345",
                "3001234567",
                "ana@example.com",
                "2000-05-10"
            )
        );
    }

    @Test
    void rechazaCamposVacios() {
        assertFalse(
            ValidacionesRegistro.camposObligatoriosCompletos(
                "Ana",
                "",
                "12345"
            )
        );
    }

    @Test
    void rechazaValoresNulos() {
        assertFalse(
            ValidacionesRegistro.camposObligatoriosCompletos(
                "Ana",
                null
            )
        );
    }

    @Test
    void aceptaFechaValida() {
        assertTrue(
            ValidacionesRegistro.fechaNacimientoValida("2000-05-10")
        );
    }

    @Test
    void rechazaFechaFutura() {
        assertFalse(
            ValidacionesRegistro.fechaNacimientoValida("2099-01-01")
        );
    }

    @Test
    void rechazaFormatoDeFechaIncorrecto() {
        assertFalse(
            ValidacionesRegistro.fechaNacimientoValida("10/05/2000")
        );
    }
}