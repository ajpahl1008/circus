package com.pahlsoft.circus.dao;

import javax.persistence.*;
import java.util.Arrays;

/**
 * Created by aj on 8/21/14.
 */
@Entity
@Table(name = "ATTENDEE", schema = "", catalog = "circus")
public class AttendeeEntity {
    private int attendeeId;
    private String firstName;
    private String lastName;
    private String shortDesc;
    private String emailAddress;
    private byte[] qrcode;
    private String title;

    @Id
    @Column(name = "ATTENDEE_ID", nullable = false, insertable = true, updatable = true)
    public int getAttendeeId() {
        return attendeeId;
    }

    public void setAttendeeId(int attendeeId) {
        this.attendeeId = attendeeId;
    }

    @Basic
    @Column(name = "FIRST_NAME", nullable = false, insertable = true, updatable = true, length = 45)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "LAST_NAME", nullable = false, insertable = true, updatable = true, length = 45)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "SHORT_DESC", nullable = false, insertable = true, updatable = true, length = 255)
    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    @Basic
    @Column(name = "EMAIL_ADDRESS", nullable = false, insertable = true, updatable = true, length = 45)
    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    @Basic
    @Column(name = "QRCODE", nullable = true, insertable = true, updatable = true)
    public byte[] getQrcode() {
        return qrcode;
    }

    public void setQrcode(byte[] qrcode) {
        this.qrcode = qrcode;
    }

    @Basic
    @Column(name = "TITLE", nullable = false, insertable = true, updatable = true, length = 45)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AttendeeEntity that = (AttendeeEntity) o;

        if (attendeeId != that.attendeeId) return false;
        if (emailAddress != null ? !emailAddress.equals(that.emailAddress) : that.emailAddress != null) return false;
        if (firstName != null ? !firstName.equals(that.firstName) : that.firstName != null) return false;
        if (lastName != null ? !lastName.equals(that.lastName) : that.lastName != null) return false;
        if (!Arrays.equals(qrcode, that.qrcode)) return false;
        if (shortDesc != null ? !shortDesc.equals(that.shortDesc) : that.shortDesc != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = attendeeId;
        result = 31 * result + (firstName != null ? firstName.hashCode() : 0);
        result = 31 * result + (lastName != null ? lastName.hashCode() : 0);
        result = 31 * result + (shortDesc != null ? shortDesc.hashCode() : 0);
        result = 31 * result + (emailAddress != null ? emailAddress.hashCode() : 0);
        result = 31 * result + (qrcode != null ? Arrays.hashCode(qrcode) : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        return result;
    }
}
