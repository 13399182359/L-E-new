package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 15:22
 * @Param
 * @return
 **/
@Data
@ToString
public class LogisticsBean implements Serializable {
    private Long id;

    private Long company_id;

    private String key;
}
