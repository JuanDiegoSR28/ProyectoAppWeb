package mx.itson.proyectoappweb.controlador;


import java.sql.SQLException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

public class ConexionBD implements IConexionBD {

    private static EntityManagerFactory factory;

    public EntityManagerFactory useConnectionMysql() {
        try {
            if (factory == null || !factory.isOpen()) {
                factory = Persistence.createEntityManagerFactory("persistencia");
            }
            return factory;
        } catch (PersistenceException e) {
            System.err.println("Error al crear la EntityManagerFactory" + e);
               
        }
        return null;
    }

    public static void closeEntityManagerFactory() {
        if (factory != null && factory.isOpen()) {
            factory.close();
        }
    }
}
