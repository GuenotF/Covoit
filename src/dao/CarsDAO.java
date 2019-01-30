package dao;

import models.CarsEntity;
import models.EntityManagerAccess;

import javax.persistence.EntityManager;

public class CarsDAO extends CarsEntity {

    //Instanciation et accès à l'EM.
    EntityManagerAccess ema = new EntityManagerAccess();
    EntityManager em = ema.getEntityManager();

    public void createCar(String type, String brand, String model, int seats){

        CarsEntity car = new CarsEntity();

        car.setType(type);
        car.setBrand(brand);
        car.setModel(model);
        car.setSeats(seats);

        em.getTransaction().begin();
        em.persist(car);
        em.getTransaction().commit();
    }
}
