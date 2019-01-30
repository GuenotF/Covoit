package models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "users", schema = "covoit_bdd", catalog = "")
public class UsersEntity {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String picture;
    private byte smoking;
    private byte talkative;
    private byte music;
    private byte isAdmin;
    private String adress;
    private Double lat;
    private Double lon;
    private int fkAgency;
    private int fkCar;
    private String password;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "firstName", nullable = false, length = 255)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastName", nullable = false, length = 255)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 255)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "picture", nullable = false, length = 255)
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Basic
    @Column(name = "smoking", nullable = false)
    public byte getSmoking() {
        return smoking;
    }

    public void setSmoking(byte smoking) {
        this.smoking = smoking;
    }

    @Basic
    @Column(name = "talkative", nullable = false)
    public byte getTalkative() {
        return talkative;
    }

    public void setTalkative(byte talkative) {
        this.talkative = talkative;
    }

    @Basic
    @Column(name = "music", nullable = false)
    public byte getMusic() {
        return music;
    }

    public void setMusic(byte music) {
        this.music = music;
    }

    @Basic
    @Column(name = "isAdmin", nullable = false)
    public byte getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(byte isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Basic
    @Column(name = "adress", nullable = false, length = 255)
    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    @Basic
    @Column(name = "lat", nullable = true, precision = 0)
    public Double getLat() {
        return lat;
    }

    public void setLat(Double lat) {
        this.lat = lat;
    }

    @Basic
    @Column(name = "lon", nullable = true, precision = 0)
    public Double getLon() {
        return lon;
    }

    public void setLon(Double lon) {
        this.lon = lon;
    }

    @Basic
    @Column(name = "fk_agency", nullable = false)
    public int getFkAgency() {
        return fkAgency;
    }

    public void setFkAgency(int fkAgency) {
        this.fkAgency = fkAgency;
    }

    @Basic
    @Column(name = "fk_car", nullable = false)
    public int getFkCar() {
        return fkCar;
    }

    public void setFkCar(int fkCar) {
        this.fkCar = fkCar;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 255)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UsersEntity that = (UsersEntity) o;
        return id == that.id &&
                smoking == that.smoking &&
                talkative == that.talkative &&
                music == that.music &&
                isAdmin == that.isAdmin &&
                fkAgency == that.fkAgency &&
                fkCar == that.fkCar &&
                Objects.equals(firstName, that.firstName) &&
                Objects.equals(lastName, that.lastName) &&
                Objects.equals(email, that.email) &&
                Objects.equals(picture, that.picture) &&
                Objects.equals(adress, that.adress) &&
                Objects.equals(lat, that.lat) &&
                Objects.equals(lon, that.lon) &&
                Objects.equals(password, that.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, firstName, lastName, email, picture, smoking, talkative, music, isAdmin, adress, lat, lon, fkAgency, fkCar, password);
    }
}
