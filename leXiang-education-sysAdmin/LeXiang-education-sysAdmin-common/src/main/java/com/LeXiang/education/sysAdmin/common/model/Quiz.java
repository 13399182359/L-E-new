package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Quiz
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 21:11
 **/
@Data
@Accessors(chain = true)
public class Quiz {

    private Long id;
    private Long userId;
    private String descriptive;
    private Integer type;
    private Long playId;
    private Integer questionNumber;
    private Integer commentNumber;
    private Integer source;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    private String username;
    private String playname;
}

