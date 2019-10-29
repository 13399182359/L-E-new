package com.LeXiang.education.order.common.model;

import java.io.Serializable;

public class WBank implements Serializable {
    private Long bankid;

    private String username;

    private String bankname;

    private String openbank;

    private Long bankaccount;

    private Long bankareaid;

    private String banksite;

    private Long bankphone;

    public Long getBankid() {
        return bankid;
    }

    public void setBankid(Long bankid) {
        this.bankid = bankid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getBankname() {
        return bankname;
    }

    public void setBankname(String bankname) {
        this.bankname = bankname == null ? null : bankname.trim();
    }

    public String getOpenbank() {
        return openbank;
    }

    public void setOpenbank(String openbank) {
        this.openbank = openbank == null ? null : openbank.trim();
    }

    public Long getBankaccount() {
        return bankaccount;
    }

    public void setBankaccount(Long bankaccount) {
        this.bankaccount = bankaccount;
    }

    public Long getBankareaid() {
        return bankareaid;
    }

    public void setBankareaid(Long bankareaid) {
        this.bankareaid = bankareaid;
    }

    public String getBanksite() {
        return banksite;
    }

    public void setBanksite(String banksite) {
        this.banksite = banksite == null ? null : banksite.trim();
    }

    public Long getBankphone() {
        return bankphone;
    }

    public void setBankphone(Long bankphone) {
        this.bankphone = bankphone;
    }
}