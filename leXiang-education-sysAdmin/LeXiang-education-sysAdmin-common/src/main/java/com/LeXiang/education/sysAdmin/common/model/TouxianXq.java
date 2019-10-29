package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @类名: TouxianXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 15:40
 **/
@Data
@Accessors(chain = true)
public class TouxianXq {

    private Integer id;
    private String name;
    private Integer orderid;
    private Integer status;
    private String tupian;

    @Override
    public String toString() {
        return "TouxianXq{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", orderid=" + orderid +
                ", status=" + status +
                ", tupian='" + tupian + '\'' +
                '}';
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

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getTupian() {
        return tupian;
    }

    public void setTupian(String tupian) {
        this.tupian = tupian;
    }
}