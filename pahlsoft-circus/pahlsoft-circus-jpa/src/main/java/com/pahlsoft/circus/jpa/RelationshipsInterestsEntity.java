package com.pahlsoft.circus.jpa;

import javax.persistence.*;

/**
 * Created by aj on 8/21/14.
 */
@Entity
@Table(name = "RELATIONSHIPS_INTERESTS", schema = "", catalog = "circus")
public class RelationshipsInterestsEntity {
    private int relationshipId;
    private int interestsId;
    private int attendeeId;

    @Id
    @Column(name = "RELATIONSHIP_ID", nullable = false, insertable = true, updatable = true)
    public int getRelationshipId() {
        return relationshipId;
    }

    public void setRelationshipId(int relationshipId) {
        this.relationshipId = relationshipId;
    }

    @Basic
    @Column(name = "INTERESTS_ID", nullable = false, insertable = true, updatable = true)
    public int getInterestsId() {
        return interestsId;
    }

    public void setInterestsId(int interestsId) {
        this.interestsId = interestsId;
    }

    @Basic
    @Column(name = "ATTENDEE_ID", nullable = false, insertable = true, updatable = true)
    public int getAttendeeId() {
        return attendeeId;
    }

    public void setAttendeeId(int attendeeId) {
        this.attendeeId = attendeeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RelationshipsInterestsEntity that = (RelationshipsInterestsEntity) o;

        if (attendeeId != that.attendeeId) return false;
        if (interestsId != that.interestsId) return false;
        if (relationshipId != that.relationshipId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = relationshipId;
        result = 31 * result + interestsId;
        result = 31 * result + attendeeId;
        return result;
    }
}
