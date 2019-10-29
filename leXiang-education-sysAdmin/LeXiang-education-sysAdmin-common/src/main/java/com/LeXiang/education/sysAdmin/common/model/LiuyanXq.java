package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: LiuyanXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 09:52
 **/
@Data
@Accessors(chain = true)
public class LiuyanXq {

    private Integer id;
    private Long userid;
    private String content;
    private Integer isopen;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private Integer status;
    private String username;
    private String phone;
    private String email;

}