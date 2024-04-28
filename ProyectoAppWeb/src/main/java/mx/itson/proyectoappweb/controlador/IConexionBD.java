package mx.itson.proyectoappweb.controlador;

import java.sql.SQLException;
import javax.persistence.EntityManagerFactory;

public interface IConexionBD {

    EntityManagerFactory useConnectionMysql() throws SQLException;
}
