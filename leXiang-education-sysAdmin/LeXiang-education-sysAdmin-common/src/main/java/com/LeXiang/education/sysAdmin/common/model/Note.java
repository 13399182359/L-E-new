package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Note
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 19:00
 **/
@Data
@Accessors(chain = true)
public class Note {

    private Long id;
    private Long userId;
    private String title;
    private String descriptive;
    private Integer type;
    private Long playId;
    private Integer open;
    private Integer question;
    private Integer comment;
    private Integer collect;
    private Integer source;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    private Integer noteShow;
    private String username;
    private String playname;
}

