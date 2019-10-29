package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/19 10:15
 * @Param
 * @return
 **/
@Data
@ToString
public class CommondityShowBean implements Serializable {
    private Long id;

    private Long uid;

    private String uname;

    private Long count;

    private Long cid;

    private String createddate;

    private String uimg;

    public CommondityShowBean() {
    }

    public CommondityShowBean( Long uid, String uname, Long count, Long cid, String createddate, String uimg) {
        this.uid = uid;
        this.uname = uname;
        this.count = count;
        this.cid = cid;
        this.createddate = createddate;
        this.uimg = uimg;
    }
}
