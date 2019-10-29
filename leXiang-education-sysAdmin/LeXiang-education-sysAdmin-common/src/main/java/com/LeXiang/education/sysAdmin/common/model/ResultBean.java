package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 19:46
 * @Param
 * @return
 **/
@Data
@ToString
public class ResultBean implements Serializable {
    private Boolean success;

    private String message;

    private Long uid;

    private Long cid;

    private List list;


    public ResultBean(Boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public ResultBean(Boolean success, List list) {
        this.success = success;
        this.list = list;
    }

    public ResultBean(Boolean success, Long uid) {
        this.success = success;
        this.uid = uid;
    }

    public ResultBean() {
    }
}
