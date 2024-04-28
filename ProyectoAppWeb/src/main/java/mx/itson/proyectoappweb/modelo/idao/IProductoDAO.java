/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;

import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Producto;

public interface IProductoDAO {

    Producto crearProducto(Producto producto);

    boolean actualizarProducto(Producto producto);

    Producto consultarProductoID(Long id);

    boolean eliminarProducto(Producto producto);

    List<Producto> obtenerTodosProductos();

}
