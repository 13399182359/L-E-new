package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @类名: answer
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-23 17:17
 **/
@Data
@Accessors(chain = true)
public class Answer {

    private Long id;
    private Long userId;
    private Integer type;
    private String descriptive;
    private Integer commentNumber;
    private Integer browseNumber;
    private Integer stick;
    private String username;
}

