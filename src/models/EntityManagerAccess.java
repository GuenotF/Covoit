package models;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerAccess {

    public EntityManagerAccess() {
    }

    EntityManager em = null;

    public EntityManager getEntityManager(){
        if(this.em == null){
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("NewPersistenceUnit") ;
            this.em = emf.createEntityManager();
        }
        return em;
    }
}
