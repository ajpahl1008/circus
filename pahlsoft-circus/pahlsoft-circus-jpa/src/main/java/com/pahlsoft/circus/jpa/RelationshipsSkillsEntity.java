package com.pahlsoft.circus.jpa;

import javax.persistence.*;

/**
 * Created by aj on 8/21/14.
 */
@Entity
@Table(name = "RELATIONSHIPS_SKILLS", schema = "", catalog = "circus")
public class RelationshipsSkillsEntity {
    private int relationshipId;
    private int attendeeId;
    private int skillsId;

    @Id
    @Column(name = "RELATIONSHIP_ID", nullable = false, insertable = true, updatable = true)
    public int getRelationshipId() {
        return relationshipId;
    }

    public void setRelationshipId(int relationshipId) {
        this.relationshipId = relationshipId;
    }

    @Basic
    @Column(name = "ATTENDEE_ID", nullable = false, insertable = true, updatable = true)
    public int getAttendeeId() {
        return attendeeId;
    }

    public void setAttendeeId(int attendeeId) {
        this.attendeeId = attendeeId;
    }

    @Basic
    @Column(name = "SKILLS_ID", nullable = false, insertable = true, updatable = true)
    public int getSkillsId() {
        return skillsId;
    }

    public void setSkillsId(int skillsId) {
        this.skillsId = skillsId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RelationshipsSkillsEntity that = (RelationshipsSkillsEntity) o;

        if (attendeeId != that.attendeeId) return false;
        if (relationshipId != that.relationshipId) return false;
        if (skillsId != that.skillsId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = relationshipId;
        result = 31 * result + attendeeId;
        result = 31 * result + skillsId;
        return result;
    }
}
