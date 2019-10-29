package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @类名: PlayClass
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-16 19:58
 **/
@Data
@ToString
public class PlayClassgtj implements Serializable {


    private Long id;

    private String playname;

    private String img;

    private Long bazaarprice;

    private Long price;

    private Long userid;

    private Long teacherid;

    private Long grade;

    private Long studentcount;

    private Long marketingcount;

    private Long isfree;

    private Long ischoiceness;

    private String uponedate;
    private String uponedateEnd;
    private String downdate;
    private String downdateEnd;
    private Long playtypeid;

    private Long organizationid;

    private String intro;

    private Long validity;

    private Long isvip;

    private String url;

    private Long orderone;

    private Long studymoshi ;

    private Long displayposition;

    private Long ismarketing;

    private Long status;

    private Long isdisabled;

    private Double teachermoney;

    private Double organizationmoney;

    private Long isputaway;

    private Long hour;

    private Long leixing;

    private Long discounttype;

    private String repayment;

    private Long orderid;

    private Long classid;

    private Long studystatus;

    private String studydate;

    private Long liveclassid;

    private Long lineclassid;

    private String name;

    private String username;

    private String orgname;

    private String period;

}
