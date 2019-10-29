package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @类名: Result
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-18 15:44
 **/
@Data
@ToString
public class Result implements Serializable {

    private boolean success;

    private  String message;

    public Result() {
    }

    public Result(boolean success, String message) {
        this.success = success;
        this.message = message;
    }
}