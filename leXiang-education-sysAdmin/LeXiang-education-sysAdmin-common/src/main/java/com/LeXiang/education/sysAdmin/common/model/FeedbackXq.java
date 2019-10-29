package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @类名: feedback
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 13:50
 **/
@Data
@Accessors(chain = true)
public class FeedbackXq implements Serializable {

    private Integer id;
    private Long userid;
    private String feedbackcontent;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private String username;
    private String phone;

}