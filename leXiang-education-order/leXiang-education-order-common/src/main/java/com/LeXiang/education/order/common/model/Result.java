package com.LeXiang.education.order.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @类名: Result
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-17 19:08
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
