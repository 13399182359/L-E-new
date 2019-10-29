package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @类名: DazheXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 15:18
 **/
@Data
@Accessors(chain = true)
public class DazheXq implements Serializable {

    private Integer id;
    private Long cid;
    private Double discounted;
    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date starttime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endtime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createtime;
    private String playname;
    private Long leixing;

    @Override
    public String toString() {
        return "DazheXq{" +
                "id=" + id +
                ", cid=" + cid +
                ", discounted=" + discounted +
                ", status=" + status +
                ", starttime=" + starttime +
                ", endtime=" + endtime +
                ", createtime=" + createtime +
                ", playname='" + playname + '\'' +
                ", leixing=" + leixing +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public Double getDiscounted() {
        return discounted;
    }

    public void setDiscounted(Double discounted) {
        this.discounted = discounted;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getPlayname() {
        return playname;
    }

    public void setPlayname(String playname) {
        this.playname = playname;
    }

    public Long getLeixing() {
        return leixing;
    }

    public void setLeixing(Long leixing) {
        this.leixing = leixing;
    }
}