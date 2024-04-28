package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Usuario;

public interface IUsuarioDAO {

    Usuario crearUsuario(Usuario usuario);

    boolean actualizarUsuario(Usuario usuario);

    Usuario consultarUsuarioID(Long id);

    boolean eliminarUsuario(Usuario usuario);

    List<Usuario> obtenerTodosUsuario();
}
