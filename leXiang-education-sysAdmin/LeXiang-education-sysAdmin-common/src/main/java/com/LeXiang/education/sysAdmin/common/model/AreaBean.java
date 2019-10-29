package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 14:59
 * @Param
 * @return
 **/
@Data
@ToString
public class AreaBean implements Serializable {
    private Long id;

    private Long pid;

    private String name;

    private String fullName;
}
