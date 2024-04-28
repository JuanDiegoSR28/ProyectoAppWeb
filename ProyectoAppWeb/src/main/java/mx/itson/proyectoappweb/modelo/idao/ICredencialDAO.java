package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Credencial;

public interface ICredencialDAO {

    Credencial crearCredencial(Credencial credencial);

    boolean actualizarCredencial(Credencial credencial);

    Credencial consultarCredencialID(Long id);

    boolean eliminarCredencial(Credencial credencial);

    List<Credencial> obtenerTodosCredencial();

}
