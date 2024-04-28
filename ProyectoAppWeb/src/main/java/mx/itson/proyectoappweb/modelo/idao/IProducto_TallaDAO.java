/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Producto_Talla;

public interface IProducto_TallaDAO {

    Producto_Talla crearProducto_Talla(Producto_Talla producto_talla);

    boolean actualizarProducto_Talla(Producto_Talla producto_talla);

    Producto_Talla consultarProducto_TallaID(Long id);

    boolean eliminarProducto_Talla(Producto_Talla producto_talla);

    List<Producto_Talla> obtenerTodosProducto_Talla();

}
