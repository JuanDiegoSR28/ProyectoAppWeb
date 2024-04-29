
package mx.itson.proyectoappweb.modelo.facbricadao;


import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.itson.proyectoappweb.controlador.ConexionBD;
import mx.itson.proyectoappweb.controlador.IConexionBD;
import mx.itson.proyectoappweb.modelo.idao.ITallaDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.TallaDAO;

/**
 *
 * @author HP
 */
public class FabricaDAO implements IFabricaDAO {

    private IConexionBD conexionBD;

    public FabricaDAO() {
        this.conexionBD = new ConexionBD();
    }

    @Override
    public ITallaDAO crearTallaDAO() {

            return new TallaDAO(conexionBD);
    }
}
