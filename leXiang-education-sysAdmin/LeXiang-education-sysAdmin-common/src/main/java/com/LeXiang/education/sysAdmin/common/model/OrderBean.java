package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 15:24
 * @Param
 * @return
 **/
@Data
@ToString
public class OrderBean implements Serializable {
    private Long id;

    private Long uid;

    private String uname;

    private Long cid;

    private Long ordernumber;

    private  String cname;

    private String uimg;

    private String cimg;

    private Double price;
    private Double priceEnd;

    private Long countedd;

    private Long freight;
    private Long freightEnd;

    private Double price_money;

    private Long shipping_address_id;
    private String sitename;

    private String createddate;
    private String createddateEnd;

    private Long way;

    private Long status;

    public OrderBean() {
    }

    public OrderBean(Long uid, String uname, Long cid, Long ordernumber, String cname, String uimg, String cimg, Double price, Long countedd, Long freight, Double price_money, Long shipping_address_id, String createddate, Long way, Long status) {
        this.uid = uid;
        this.uname = uname;
        this.cid = cid;
        this.ordernumber = ordernumber;
        this.cname = cname;
        this.uimg = uimg;
        this.cimg = cimg;
        this.price = price;
        this.countedd = countedd;
        this.freight = freight;
        this.price_money = price_money;
        this.shipping_address_id = shipping_address_id;
        this.createddate = createddate;
        this.way = way;
        this.status = status;
    }
}
