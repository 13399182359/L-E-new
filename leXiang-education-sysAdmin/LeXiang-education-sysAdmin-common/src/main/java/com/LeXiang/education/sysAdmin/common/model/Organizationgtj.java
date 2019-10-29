package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @类名: Organizationgtj
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-24 15:43
 **/
@Data
@ToString
public class Organizationgtj implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id ;

    private String name;

    private String intro;

    private String legalperson;

    private String img;

    private Long bank;

    private Long phone;

    public Organizationgtj() {
    }

    public Organizationgtj(Long id, String name, String intro, String legalperson, String img, Long bank, Long phone, Date update, Long status) {
        this.id = id;
        this.name = name;
        this.intro = intro;
        this.legalperson = legalperson;
        this.img = img;
        this.bank = bank;
        this.phone = phone;
        this.update = update;
        this.status = status;
    }


    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date update;

    private Long status;

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

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getLegalperson() {
        return legalperson;
    }

    public void setLegalperson(String legalperson) {
        this.legalperson = legalperson;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Long getBank() {
        return bank;
    }

    public void setBank(Long bank) {
        this.bank = bank;
    }

    public Long getPhone() {
        return phone;
    }

    public void setPhone(Long phone) {
        this.phone = phone;
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
        return "Organizationgtj{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", intro='" + intro + '\'' +
                ", legalperson='" + legalperson + '\'' +
                ", img='" + img + '\'' +
                ", bank=" + bank +
                ", phone=" + phone +
                ", update=" + update +
                ", status=" + status +
                '}';
    }


}
