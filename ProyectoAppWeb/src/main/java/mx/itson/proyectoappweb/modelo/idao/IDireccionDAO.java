package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Direccion;

public interface IDireccionDAO {

    Direccion crearDireccion(Direccion direccion);

    boolean actualizarDireccion(Direccion direccion);

    Direccion consultarDireccionID(Long id);

    boolean eliminarDireccion(Direccion direccion);

    List<Direccion> obtenerTodosDestinatario();

}
