package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 15:04
 * @Param
 * @return
 **/
@Data
@ToString
public class CommodityBean implements Serializable {
    private Long id;

    private String name;

    private String img;

    private Double price;

    private Double priceEnd;

    private Long repertory;

    private Long repertoryEnd;

    private Long status;

    private Long freight;

    private Long freightEnd;

    private String createddate;

    private String createddateEnd;

    private Long type;

    private Long quintessence;

    private String info;

    private String describe;

    private Long count;

    private Long way;

}
