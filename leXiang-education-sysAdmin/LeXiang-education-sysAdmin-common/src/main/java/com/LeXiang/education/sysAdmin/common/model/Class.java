package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Class
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-16 15:40
 **/
@Data
@Accessors(chain = true)
public class Class {

    private Long id;
    private String name;
    private Integer price;
    private Integer studyNumber;
    private Integer marketingcount;
    private String img;
    private Long userid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date downdate;
    private Integer classtype;
    private Integer organization;
    private String intro;
    private String course;
    private Integer displayposition;
    private Integer ismarketing;
    private Integer teachermoney;
    private Integer organizationmoney;
    private Integer status;
    private String username;
}

