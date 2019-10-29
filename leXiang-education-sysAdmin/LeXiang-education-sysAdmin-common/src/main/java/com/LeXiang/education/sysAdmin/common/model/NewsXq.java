package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @类名: NewsXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 20:22
 **/
@Data
@Accessors(chain = true)
public class NewsXq implements Serializable {

    private Integer id;
    private Long userid;
    private String title;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private Integer isread;
    private String username;

}