package com.LeXiang.education.order.common.model;

import java.util.Date;

public class Userb {
    private Long userid;

    private String username;

    private String realname;

    private Long idnumbers;

    private String userrights;

    private Float userbalance;

    private Float freezebalance;

    private Float viptype;

    private Date viplastdate;

    private Float availableincome;

    private Float freezeincome;

    private String playname;

    private Float buymoney;

    private Float platformintu;

    private Float teachermoney;

    private Float sharerintu;

    private String distributions;

    private Date divcreadate;

    private Date divlastdate;

    private String remark;

    private Long useruid;

    private Long integrals;

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public Long getIdnumbers() {
        return idnumbers;
    }

    public void setIdnumbers(Long idnumbers) {
        this.idnumbers = idnumbers;
    }

    public String getUserrights() {
        return userrights;
    }

    public void setUserrights(String userrights) {
        this.userrights = userrights == null ? null : userrights.trim();
    }

    public Float getUserbalance() {
        return userbalance;
    }

    public void setUserbalance(Float userbalance) {
        this.userbalance = userbalance;
    }

    public Float getFreezebalance() {
        return freezebalance;
    }

    public void setFreezebalance(Float freezebalance) {
        this.freezebalance = freezebalance;
    }

    public Float getViptype() {
        return viptype;
    }

    public void setViptype(Float viptype) {
        this.viptype = viptype;
    }

    public Date getViplastdate() {
        return viplastdate;
    }

    public void setViplastdate(Date viplastdate) {
        this.viplastdate = viplastdate;
    }

    public Float getAvailableincome() {
        return availableincome;
    }

    public void setAvailableincome(Float availableincome) {
        this.availableincome = availableincome;
    }

    public Float getFreezeincome() {
        return freezeincome;
    }

    public void setFreezeincome(Float freezeincome) {
        this.freezeincome = freezeincome;
    }

    public String getPlayname() {
        return playname;
    }

    public void setPlayname(String playname) {
        this.playname = playname == null ? null : playname.trim();
    }

    public Float getBuymoney() {
        return buymoney;
    }

    public void setBuymoney(Float buymoney) {
        this.buymoney = buymoney;
    }

    public Float getPlatformintu() {
        return platformintu;
    }

    public void setPlatformintu(Float platformintu) {
        this.platformintu = platformintu;
    }

    public Float getTeachermoney() {
        return teachermoney;
    }

    public void setTeachermoney(Float teachermoney) {
        this.teachermoney = teachermoney;
    }

    public Float getSharerintu() {
        return sharerintu;
    }

    public void setSharerintu(Float sharerintu) {
        this.sharerintu = sharerintu;
    }

    public String getDistributions() {
        return distributions;
    }

    public void setDistributions(String distributions) {
        this.distributions = distributions == null ? null : distributions.trim();
    }

    public Date getDivcreadate() {
        return divcreadate;
    }

    public void setDivcreadate(Date divcreadate) {
        this.divcreadate = divcreadate;
    }

    public Date getDivlastdate() {
        return divlastdate;
    }

    public void setDivlastdate(Date divlastdate) {
        this.divlastdate = divlastdate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Long getUseruid() {
        return useruid;
    }

    public void setUseruid(Long useruid) {
        this.useruid = useruid;
    }

    public Long getIntegrals() {
        return integrals;
    }

    public void setIntegrals(Long integrals) {
        this.integrals = integrals;
    }
}