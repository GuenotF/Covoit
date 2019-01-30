package dao;

import models.EntityManagerAccess;
import models.UsersEntity;

import javax.persistence.EntityManager;
import java.util.List;

public class UsersDAO extends UsersEntity {

    private boolean userExist = false;

    //Instanciation et accès à l'EM.
    EntityManagerAccess ema = new EntityManagerAccess();
    EntityManager em = ema.getEntityManager();

    public UsersEntity findUserByEmail(String email){

        UsersEntity resultUser = (UsersEntity) em.createQuery("SELECT u FROM UsersEntity u WHERE u.email = :email", UsersEntity.class).setParameter("email", email).getSingleResult();

        return resultUser;
    }

    public boolean findUserByEmailAndPassword(String email, String password){

        UsersEntity resultUser = (UsersEntity) em.createQuery("SELECT u FROM UsersEntity u WHERE u.email = :email AND password= :password", UsersEntity.class).setParameter("email", email).setParameter("password", password).getSingleResult();

        if (resultUser != null) {
            userExist = true;
            System.out.println(userExist);
        }

        return userExist;
    }

    public void createUser(String firstName, String lastName, String email, String picture, byte smoking, byte talkative, byte music, byte isAdmin, String adress, double lat, double lon, int fk_agency, int fk_car, String pwd){

        UsersEntity user = new UsersEntity();

        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPicture(picture);
        user.setSmoking(smoking);
        user.setTalkative(talkative);
        user.setMusic(music);
        user.setIsAdmin(isAdmin);
        user.setAdress(adress);
        user.setLat(lat);
        user.setLon(lon);
        user.setFkAgency(fk_agency);
        user.setFkCar(fk_car);
        user.setPassword(pwd);

        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();

    }

                                        //A VOIR  ==> Type "byte" au lieu de "boolean"?
    public void updateUserById(int id, String firstName, String lastName, String email, String picture, byte smoking, byte talkative, byte music, byte isAdmin, String adress, double lat, double lon, int fk_agency, int fk_car, String pwd){

        UsersEntity resultUser= em.find(UsersEntity.class, id);

        UsersEntity user = resultUser;

        em.getTransaction().begin();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setPicture(picture);
        user.setSmoking(smoking);
        user.setTalkative(talkative);
        user.setMusic(music);
        user.setIsAdmin(isAdmin);
        user.setAdress(adress);
        user.setLat(lat);
        user.setLon(lon);
        user.setFkAgency(fk_agency);
        user.setFkCar(fk_car);
        em.getTransaction().commit();

    }

    public void deleteUser(int id){

        UsersEntity  user = em.find(UsersEntity.class, id);

        em.getTransaction().begin();
        em.remove(user);
        em.getTransaction().commit();

    }

    public List<UsersEntity> findAllUsers(){

        List<UsersEntity> ListResult = (List<UsersEntity>) em.createQuery("SELECT u FROM UsersEntity u", UsersEntity.class).getResultList();

        return ListResult;

    }

}
