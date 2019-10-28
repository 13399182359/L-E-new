package com.LeXiang.education.user.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serializable;

/**
 * @类名: PlayClass
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-16 19:58
 **/
@Data
@ToString
@Document(indexName = "zth",type = "playclass")
public class PlayClassgtj implements Serializable {


    private Long id;
    @Field(type = FieldType.Text, analyzer = "ik_max_word")
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

    private String discount;

    private String mealname;

    private Long refundstatus;

    private String refunddate;

    private Long mealid;


}
