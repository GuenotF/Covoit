package dao;

import models.EntityManagerAccess;
import models.TripsEntity;
import models.UsersEntity;

import javax.persistence.EntityManager;
import java.sql.Date;
import java.sql.Time;

public class TripsDAO extends TripsEntity {

    //Instanciation et accès à l'EM.
    EntityManagerAccess ema = new EntityManagerAccess();
    EntityManager em = ema.getEntityManager();


    public void createTrip(Date date, Time timeArrive, int seats, UsersEntity fk_owner){

        TripsEntity trip = new TripsEntity();

        trip.setDate(date);
        trip.setTimeArrive(timeArrive);
        trip.setSeats(seats);
        trip.setFkOwner(fk_owner);

        em.getTransaction().begin();
        em.persist(trip);
        em.getTransaction().commit();

    }

    public void deleteTrip (int id){

        TripsEntity trip = em.find(TripsEntity.class, id);

        em.getTransaction().begin();
        em.remove(trip);
        em.getTransaction().commit();
    }

    public TripsEntity findTripById(int id){

        TripsEntity trip = em.find(TripsEntity.class, id);

        return trip;

    }
}
