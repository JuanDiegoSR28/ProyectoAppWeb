package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Destinatario;

public interface IDestinatarioDAO {

    Destinatario crearDestinatario(Destinatario destinatario);

    boolean actualizarDestinatario(Destinatario destinatario);

    Destinatario consultarDestinatarioID(Long id);

    boolean eliminarDestinatario(Destinatario destinatario);

    List<Destinatario> obtenerTodosDestinatario();
}
