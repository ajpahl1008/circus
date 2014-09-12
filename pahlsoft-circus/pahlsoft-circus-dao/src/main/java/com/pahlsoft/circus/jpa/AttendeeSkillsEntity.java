package com.pahlsoft.circus.jpa;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by aj on 8/27/14.
 */
@Entity
@Table(name = "attendee_skills", schema = "", catalog = "CIRCUS")
public class AttendeeSkillsEntity {
    private int attendeeId;
    private String skill;

    @Basic
    @Column(name = "ATTENDEE_ID", nullable = false, insertable = true, updatable = true)
    public int getAttendeeId() {
        return attendeeId;
    }

    public void setAttendeeId(int attendeeId) {
        this.attendeeId = attendeeId;
    }

    @Basic
    @Column(name = "SKILL", nullable = false, insertable = true, updatable = true, length = 45)
    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AttendeeSkillsEntity that = (AttendeeSkillsEntity) o;

        if (attendeeId != that.attendeeId) return false;
        if (skill != null ? !skill.equals(that.skill) : that.skill != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = attendeeId;
        result = 31 * result + (skill != null ? skill.hashCode() : 0);
        return result;
    }
}
