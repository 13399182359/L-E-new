package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @类名: HuiyuandengjiXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 14:05
 **/
@Data
@Accessors(chain = true)
public class HuiyuandengjiXq {

    private Integer id;
    private String name;
    private Integer grade;
    private Double mouthprice;
    private Double yearprice;
    private Integer status;
    private String pcimg;
    private String h5img;

    @Override
    public String toString() {
        return "HuiyuandengjiXq{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", grade=" + grade +
                ", mouthprice=" + mouthprice +
                ", yearprice=" + yearprice +
                ", status=" + status +
                ", pcimg='" + pcimg + '\'' +
                ", h5img='" + h5img + '\'' +
                '}';
    }

    public String getPcimg() {
        return pcimg;
    }

    public void setPcimg(String pcimg) {
        this.pcimg = pcimg;
    }

    public String getH5img() {
        return h5img;
    }

    public void setH5img(String h5img) {
        this.h5img = h5img;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Double getMouthprice() {
        return mouthprice;
    }

    public void setMouthprice(Double mouthprice) {
        this.mouthprice = mouthprice;
    }

    public Double getYearprice() {
        return yearprice;
    }

    public void setYearprice(Double yearprice) {
        this.yearprice = yearprice;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}