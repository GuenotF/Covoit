package dao;

import models.AgenciesEntity;
import models.EntityManagerAccess;

import javax.persistence.EntityManager;

public class AgenciesDAO extends AgenciesEntity {

//    @PersistenceContext(unitName = "NewPersistenceUnit")
    EntityManagerAccess ema = new EntityManagerAccess();

    EntityManager em = ema.getEntityManager();


    public AgenciesEntity findAgencyById(int id){

        AgenciesEntity agency = em.find(AgenciesEntity.class, id);

        return agency;
    }

    public void createAgency(String name, String adress, double lat, double lon){

        AgenciesEntity agency = new AgenciesEntity();

        agency.setName(name);
        agency.setAdress(adress);
        agency.setLat(lat);
        agency.setLon(lon);

        em.getTransaction().begin();
        em.persist(agency);
        em.getTransaction().commit();
    }

    public void deleteAgency(int id){

        AgenciesEntity agency = new AgenciesEntity();

        agency = em.find(AgenciesEntity.class, id);

        em.getTransaction().begin();
        em.remove(agency);
        em.getTransaction().commit();

    }

}
