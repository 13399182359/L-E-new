package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: Remark
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 14:34
 **/
@Data
@Accessors(chain = true)
public class Remark {

    private Long id;
    private Long userId;
    private String content;
    private Integer type;
    private Long playId;
    private Integer starlevel;
    private Integer commentNumber;
    private Integer source;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    private Integer remarkShow;
    private String username;
    private String playname;
}

