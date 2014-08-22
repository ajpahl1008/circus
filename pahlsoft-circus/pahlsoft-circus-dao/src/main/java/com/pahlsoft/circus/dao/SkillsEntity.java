package com.pahlsoft.circus.dao;

import javax.persistence.*;

/**
 * Created by aj on 8/21/14.
 */
@Entity
@Table(name = "SKILLS", schema = "", catalog = "circus")
public class SkillsEntity {
    private int skillId;
    private String skill;

    @Id
    @Column(name = "SKILL_ID", nullable = false, insertable = true, updatable = true)
    public int getSkillId() {
        return skillId;
    }

    public void setSkillId(int skillId) {
        this.skillId = skillId;
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

        SkillsEntity that = (SkillsEntity) o;

        if (skillId != that.skillId) return false;
        if (skill != null ? !skill.equals(that.skill) : that.skill != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = skillId;
        result = 31 * result + (skill != null ? skill.hashCode() : 0);
        return result;
    }
}
