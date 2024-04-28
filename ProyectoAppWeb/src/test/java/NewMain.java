
import java.sql.SQLException;
import mx.itson.proyectoappweb.controlador.ConexionBD;
import mx.itson.proyectoappweb.controlador.IConexionBD;
import mx.itson.proyectoappweb.modelo.dominio.Credencial;
import mx.itson.proyectoappweb.modelo.idao.ICredencialDAO;
import mx.itson.proyectoappweb.modelo.idao.impl.CredencialDAO;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */

/**
 *
 * @author Daniel Alameda
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        
        IConexionBD bD = new ConexionBD();
        
        
        ICredencialDAO credencialDAO = new CredencialDAO(bD);
        
        credencialDAO.crearCredencial(new Credencial("as", "asdf"));
        
        
    }
    
}
