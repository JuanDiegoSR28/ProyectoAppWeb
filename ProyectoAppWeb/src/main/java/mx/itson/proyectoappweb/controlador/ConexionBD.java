/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mx.itson.proyectoappweb.controlador;
import java.sql.SQLException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

public class ConexionBD implements IConexionBD {

    private static EntityManagerFactory factory;

    @Override
    public EntityManagerFactory useConnectionMySQL() throws SQLException {

        try {
            if (factory == null || !factory.isOpen()) {
                factory = Persistence.createEntityManagerFactory("persistencia");
            }
            return factory;
        } catch (PersistenceException e) {
            throw new SQLException("Error al crear la EntityManagerFactory", e);
        }
    }

    public static void closeEntityManagerFactory() {
        if (factory != null && factory.isOpen()) {
            factory.close();
        }
    }

}
