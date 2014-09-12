package com.pahlsoft.circus.jpa;

import javax.persistence.*;

/**
 * Created by aj on 8/27/14.
 */
@Entity
@Table(name = "INTERESTS", schema = "", catalog = "CIRCUS")
public class


        InterestsEntity {
    private int interestsId;
    private String interestDescription;

    @Id
    @Column(name = "INTERESTS_ID", nullable = false, insertable = true, updatable = true)
    public int getInterestsId() {
        return interestsId;
    }

    public void setInterestsId(int interestsId) {
        this.interestsId = interestsId;
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

        InterestsEntity that = (InterestsEntity) o;

        if (interestsId != that.interestsId) return false;
        if (interestDescription != null ? !interestDescription.equals(that.interestDescription) : that.interestDescription != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = interestsId;
        result = 31 * result + (interestDescription != null ? interestDescription.hashCode() : 0);
        return result;
    }
}
