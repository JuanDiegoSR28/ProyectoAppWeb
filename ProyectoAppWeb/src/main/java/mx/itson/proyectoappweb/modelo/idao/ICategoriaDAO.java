/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao;


import java.util.List;
import mx.itson.proyectoappweb.modelo.dominio.Categoria;

public interface ICategoriaDAO {

    Categoria crearCategoria(Categoria categoria);

    boolean actualizarCategoria(Categoria categoria);

    Categoria consultarCategoriaID(Long id);

    boolean eliminarCategoria(Categoria categoria);

    List<Categoria> obtenerTodasCategorias();

}
