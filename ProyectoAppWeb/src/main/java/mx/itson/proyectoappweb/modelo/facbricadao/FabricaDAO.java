
package mx.itson.proyectoappweb.modelo.facbricadao;


import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.itson.proyectoappweb.controlador.ConexionBD;
import mx.itson.proyectoappweb.controlador.IConexionBD;
import mx.itson.proyectoappweb.modelo.idao.ICarritoDAO;
import mx.itson.proyectoappweb.modelo.idao.ICategoriaDAO;
import mx.itson.proyectoappweb.modelo.idao.ICredencialDAO;
import mx.itson.proyectoappweb.modelo.idao.IDestinatarioDAO;
import mx.itson.proyectoappweb.modelo.idao.IDireccionDAO;
import mx.itson.proyectoappweb.modelo.idao.IEstiloDAO;
import mx.itson.proyectoappweb.modelo.idao.IImagenDAO;
import mx.itson.proyectoappweb.modelo.idao.IProductoDAO;
import mx.itson.proyectoappweb.modelo.idao.IProducto_TallaDAO;
import mx.itson.proyectoappweb.modelo.idao.ITallaDAO;
import mx.itson.proyectoappweb.modelo.idao.IUsuarioDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.CarritoDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.CategoriaDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.CredencialDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.DestinatarioDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.DireccionDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.EstiloDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.ImagenDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.ProductoDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.Producto_TallaDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.TallaDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.UsuarioDAO;

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

    @Override
    public ICarritoDAO crearCarritoDAO() {
        
        return new CarritoDAO(conexionBD);
        
    }

    @Override
    public ICategoriaDAO crearCategoriaDAO() {
        
        return new CategoriaDAO(conexionBD);
        
    }

    @Override
    public ICredencialDAO crearCredencialDAO() {
        
        return new CredencialDAO(conexionBD);
        
    }

    @Override
    public IDestinatarioDAO crearDestinatarioDAO() {
        
        return new DestinatarioDAO(conexionBD);
        
    }

    @Override
    public IDireccionDAO crearDireccionDAO() {
        
        return new DireccionDAO(conexionBD);
        
    }

    @Override
    public IEstiloDAO crearEstiloDAO() {
        
        return new EstiloDAO(conexionBD);
        
    }

    @Override
    public IImagenDAO crearImagenDAO() {
        
        return new ImagenDAO(conexionBD);
        
    }

    @Override
    public IProductoDAO crearProductoDAO() {
        
        return new ProductoDAO(conexionBD);
        
    }

    @Override
    public IProducto_TallaDAO crearProductoTallaDAO() {
        
        return new Producto_TallaDAO(conexionBD);
        
    }

    @Override
    public IUsuarioDAO crearUsuarioDAO() {
        
        return new UsuarioDAO(conexionBD);
        
    }
}
