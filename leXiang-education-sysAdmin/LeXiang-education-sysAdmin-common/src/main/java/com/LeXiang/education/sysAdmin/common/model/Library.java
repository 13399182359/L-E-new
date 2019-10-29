package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Library
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 16:18
 **/
@Data
@Accessors(chain = true)
public class Library {

    private Long id;
    private Long userId;
    private String title;
    private Integer price;
    private String info;
    private Integer status;
    private Integer audit;
    private Integer recommended;
    private Integer downloadNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date uploadTime;
    private String username;
    private String playname;
}

