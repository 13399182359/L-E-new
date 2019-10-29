package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/19 11:16
 * @Param
 * @return
 **/
@Data
@ToString
public class CommondityCommentBean implements Serializable {
    private String id;

    private Long uid;

    private String uimg;

    private Long cid;

    private String info;

    private String createddate;
}
