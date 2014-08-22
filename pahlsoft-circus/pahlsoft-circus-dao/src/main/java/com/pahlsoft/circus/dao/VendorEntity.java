package com.pahlsoft.circus.dao;

import javax.persistence.*;
import java.util.Arrays;

/**
 * Created by aj on 8/21/14.
 */
@Entity
@Table(name = "VENDOR", schema = "", catalog = "circus")
public class VendorEntity {
    private int vendorId;
    private String vendorName;
    private String vendorDescription;
    private byte[] vendorLogo;
    private String vendorAddress;
    private String vendorPhone;

    @Id
    @Column(name = "VENDOR_ID", nullable = false, insertable = true, updatable = true)
    public int getVendorId() {
        return vendorId;
    }

    public void setVendorId(int vendorId) {
        this.vendorId = vendorId;
    }

    @Basic
    @Column(name = "VENDOR_NAME", nullable = false, insertable = true, updatable = true, length = 45)
    public String getVendorName() {
        return vendorName;
    }

    public void setVendorName(String vendorName) {
        this.vendorName = vendorName;
    }

    @Basic
    @Column(name = "VENDOR_DESCRIPTION", nullable = false, insertable = true, updatable = true, length = 45)
    public String getVendorDescription() {
        return vendorDescription;
    }

    public void setVendorDescription(String vendorDescription) {
        this.vendorDescription = vendorDescription;
    }

    @Basic
    @Column(name = "VENDOR_LOGO", nullable = false, insertable = true, updatable = true)
    public byte[] getVendorLogo() {
        return vendorLogo;
    }

    public void setVendorLogo(byte[] vendorLogo) {
        this.vendorLogo = vendorLogo;
    }

    @Basic
    @Column(name = "VENDOR_ADDRESS", nullable = false, insertable = true, updatable = true, length = 45)
    public String getVendorAddress() {
        return vendorAddress;
    }

    public void setVendorAddress(String vendorAddress) {
        this.vendorAddress = vendorAddress;
    }

    @Basic
    @Column(name = "VENDOR_PHONE", nullable = false, insertable = true, updatable = true, length = 45)
    public String getVendorPhone() {
        return vendorPhone;
    }

    public void setVendorPhone(String vendorPhone) {
        this.vendorPhone = vendorPhone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        VendorEntity that = (VendorEntity) o;

        if (vendorId != that.vendorId) return false;
        if (vendorAddress != null ? !vendorAddress.equals(that.vendorAddress) : that.vendorAddress != null)
            return false;
        if (vendorDescription != null ? !vendorDescription.equals(that.vendorDescription) : that.vendorDescription != null)
            return false;
        if (!Arrays.equals(vendorLogo, that.vendorLogo)) return false;
        if (vendorName != null ? !vendorName.equals(that.vendorName) : that.vendorName != null) return false;
        if (vendorPhone != null ? !vendorPhone.equals(that.vendorPhone) : that.vendorPhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = vendorId;
        result = 31 * result + (vendorName != null ? vendorName.hashCode() : 0);
        result = 31 * result + (vendorDescription != null ? vendorDescription.hashCode() : 0);
        result = 31 * result + (vendorLogo != null ? Arrays.hashCode(vendorLogo) : 0);
        result = 31 * result + (vendorAddress != null ? vendorAddress.hashCode() : 0);
        result = 31 * result + (vendorPhone != null ? vendorPhone.hashCode() : 0);
        return result;
    }
}
