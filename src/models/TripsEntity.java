package models;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;
import java.util.Objects;

@Entity
@Table(name = "trips", schema = "covoit_bdd", catalog = "")
public class TripsEntity {
    private int id;
    private Date date;
    private Time timeArrive;
    private int seats;
    private int fkOwner;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "date", nullable = false)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Basic
    @Column(name = "timeArrive", nullable = false)
    public Time getTimeArrive() {
        return timeArrive;
    }

    public void setTimeArrive(Time timeArrive) {
        this.timeArrive = timeArrive;
    }

    @Basic
    @Column(name = "seats", nullable = false)
    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    @Basic
    @Column(name = "fk_owner", nullable = false)
    public int getFkOwner() {
        return fkOwner;
    }

    public void setFkOwner(int fkOwner) {
        this.fkOwner = fkOwner;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TripsEntity that = (TripsEntity) o;
        return id == that.id &&
                seats == that.seats &&
                fkOwner == that.fkOwner &&
                Objects.equals(date, that.date) &&
                Objects.equals(timeArrive, that.timeArrive);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, date, timeArrive, seats, fkOwner);
    }
}
