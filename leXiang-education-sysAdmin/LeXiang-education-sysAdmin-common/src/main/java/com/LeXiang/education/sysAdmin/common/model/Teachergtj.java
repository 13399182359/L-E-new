package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @类名: Teachergtj
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-24 16:16
 **/
@Data
@ToString
public class Teachergtj implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private String name;
    private Long phone;
    private Long identitycard;
    private String intro;
    private Long bank;
    private Long organizationid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date update;
    private Long status;

    public Teachergtj() {
    }

    public Teachergtj(Long id, String name, Long phone, Long identitycard, String intro, Long bank, Long organizationid, Date update, Long status) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.identitycard = identitycard;
        this.intro = intro;
        this.bank = bank;
        this.organizationid = organizationid;
        this.update = update;
        this.status = status;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPhone() {
        return phone;
    }

    public void setPhone(Long phone) {
        this.phone = phone;
    }

    public Long getIdentitycard() {
        return identitycard;
    }

    public void setIdentitycard(Long identitycard) {
        this.identitycard = identitycard;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public Long getBank() {
        return bank;
    }

    public void setBank(Long bank) {
        this.bank = bank;
    }

    public Long getOrganizationid() {
        return organizationid;
    }

    public void setOrganizationid(Long organizationid) {
        this.organizationid = organizationid;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }

    public Long getStatus() {
        return status;
    }

    public void setStatus(Long status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Teachergtj{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phone=" + phone +
                ", identitycard=" + identitycard +
                ", intro='" + intro + '\'' +
                ", bank=" + bank +
                ", organizationid=" + organizationid +
                ", update=" + update +
                ", status=" + status +
                '}';
    }
}
