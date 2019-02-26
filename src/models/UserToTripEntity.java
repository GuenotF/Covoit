package models;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user_to_trip", schema = "covoit_bdd", catalog = "")
public class UserToTripEntity {
    private int id;
    private UsersEntity fkUser;
    private TripsEntity fkTrip;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @OneToOne
    @JoinColumn(name = "fk_user", nullable = false)
    public UsersEntity getFkUser() {
        return fkUser;
    }

    public void setFkUser(UsersEntity fkUser) {
        this.fkUser = fkUser;
    }

    @OneToOne
    @JoinColumn(name = "fk_trip", nullable = false)
    public TripsEntity getFkTrip() {
        return fkTrip;
    }

    public void setFkTrip(TripsEntity fkTrip) {
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
