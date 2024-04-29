/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.facbricadao;

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



/**
 *
 * @author HP
 */
public interface IFabricaDAO {
    
    ICarritoDAO crearCarritoDAO();
    ICategoriaDAO crearCategoriaDAO();
    ICredencialDAO crearCredencialDAO();
    IDestinatarioDAO crearDestinatarioDAO();
    IDireccionDAO crearDireccionDAO();
    IEstiloDAO crearEstiloDAO();
    IImagenDAO crearImagenDAO();
    IProductoDAO crearProductoDAO();
    IProducto_TallaDAO crearProductoTallaDAO();
    ITallaDAO crearTallaDAO();
    IUsuarioDAO crearUsuarioDAO();
    
}
