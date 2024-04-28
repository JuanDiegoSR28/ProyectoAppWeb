/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mx.itson.proyectoappweb.modelo.idao.impl;


import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.PersistenceException;
import mx.itson.proyectoappweb.controlador.IConexionBD;
import mx.itson.proyectoappweb.modelo.dominio.Carrito;
import mx.itson.proyectoappweb.modelo.idao.ICarritoDAO;

public class CarritoDAO implements ICarritoDAO {

    private EntityManagerFactory entityManagerFactory;

    public CarritoDAO(IConexionBD conexionBD) throws SQLException {
        this.entityManagerFactory = conexionBD.useConnectionMysql();
    }

    @Override
    public Carrito crearCarrito(Carrito carrito) throws PersistenceException {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(carrito);
            entityManager.getTransaction().commit();
            return carrito;
        } catch (PersistenceException e) {
            if (e.getMessage().contains("Duplicate entry")) {
                throw new PersistenceException("Error al crear el carrito: ya existe un carrito con los mismo valores", e);
            }
            entityManager.getTransaction().rollback();
            throw new PersistenceException("Error al crear el carrito", e);
        } finally {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
        }
    }

    @Override
    public boolean actualizarCarrito(Carrito carrito) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.merge(carrito);
            entityManager.getTransaction().commit();
            return true;
        } catch (PersistenceException e) {
            entityManager.getTransaction().rollback();
            throw new PersistenceException("Error al actualizar el carrito", e);
        } finally {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
        }
    }

    @Override
    public Carrito consultarCarritoID(Long id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            Carrito carrito = entityManager.find(Carrito.class, id);
            if (carrito == null) {
                throw new EntityNotFoundException("Carrito no encontrado con ID: " + id);
            }
            return carrito;
        } finally {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
        }
    }

    @Override
    public boolean eliminarCarrito(Carrito carrito) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.remove(entityManager.contains(carrito) ? carrito : entityManager.merge(carrito));
            entityManager.getTransaction().commit();
            return true;
        } catch (PersistenceException e) {
            entityManager.getTransaction().rollback();
            throw new PersistenceException("Error al eliminar el carrito", e);
        } finally {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
        }
    }

    @Override
    public List<Carrito> obtenerTodosCarrito() {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            return entityManager.createQuery("SELECT t FROM carritos c", Carrito.class).getResultList();
        } catch (PersistenceException e) {
            throw new PersistenceException("Error al consultar todos los carritos", e);
        } finally {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
        }
    }

}
