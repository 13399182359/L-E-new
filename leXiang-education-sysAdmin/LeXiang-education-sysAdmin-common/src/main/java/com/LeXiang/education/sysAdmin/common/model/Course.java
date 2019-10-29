package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Course
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-21 16:40
 **/
@Data
@Accessors(chain = true)
public class Course {
    private Long id;
    private String name;
    private Integer price;
    private Integer studyNumber;
    private Integer marketingNumber;
    private String img;
    private Long userId;
    private Long lecturerId;
    private Integer audit;
    private Integer free;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updateTime;
    private Integer type;
    private Integer organization;
    private String info;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endTime;
    private String site;
    private Integer status;
    private Integer displayposition;
    private String username;
}

