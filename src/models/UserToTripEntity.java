package models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user_to_trip", schema = "covoit_bdd", catalog = "")
public class UserToTripEntity {
    private int id;
    private int fkUser;
    private int fkTrip;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "fk_user", nullable = false)
    public int getFkUser() {
        return fkUser;
    }

    public void setFkUser(int fkUser) {
        this.fkUser = fkUser;
    }

    @Basic
    @Column(name = "fk_trip", nullable = false)
    public int getFkTrip() {
        return fkTrip;
    }

    public void setFkTrip(int fkTrip) {
        this.fkTrip = fkTrip;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserToTripEntity that = (UserToTripEntity) o;
        return id == that.id &&
                fkUser == that.fkUser &&
                fkTrip == that.fkTrip;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, fkUser, fkTrip);
    }
}
