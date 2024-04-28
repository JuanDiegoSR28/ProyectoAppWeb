/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;


import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Carrito;

public interface ICarritoDAO {

    Carrito crearCarrito(Carrito carrito);

    boolean actualizarCarrito(Carrito carrito);

    Carrito consultarCarritoID(Long id);

    boolean eliminarCarrito(Carrito carrito);

    List<Carrito> obtenerTodosCarrito();

}