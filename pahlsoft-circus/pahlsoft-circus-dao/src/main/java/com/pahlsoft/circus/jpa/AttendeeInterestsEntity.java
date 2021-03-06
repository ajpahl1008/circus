package com.pahlsoft.circus.jpa;

import javax.persistence.*;

/**
 * Created by aj on 8/27/14.
 */
@Entity
@Table(name = "attendee_interests", schema = "", catalog = "CIRCUS")
public class AttendeeInterestsEntity {
    private int attendeeId;
    private String interestDescription;

    @Basic
    @Column(name = "ATTENDEE_ID", nullable = false, insertable = true, updatable = true)
    public int getAttendeeId() {
        return attendeeId;
    }

    public void setAttendeeId(int attendeeId) {
        this.attendeeId = attendeeId;
    }

    @Basic
    @Column(name = "INTEREST_DESCRIPTION", nullable = false, insertable = true, updatable = true, length = 45)
    public String getInterestDescription() {
        return interestDescription;
    }

    public void setInterestDescription(String interestDescription) {
        this.interestDescription = interestDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AttendeeInterestsEntity that = (AttendeeInterestsEntity) o;

        if (attendeeId != that.attendeeId) return false;
        if (interestDescription != null ? !interestDescription.equals(that.interestDescription) : that.interestDescription != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = attendeeId;
        result = 31 * result + (interestDescription != null ? interestDescription.hashCode() : 0);
        return result;
    }

    private String id;

    @Id
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
