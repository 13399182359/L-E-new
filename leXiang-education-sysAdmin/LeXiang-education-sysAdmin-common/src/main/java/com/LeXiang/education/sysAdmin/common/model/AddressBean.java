package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/22 19:24
 * @Param
 * @return
 **/
@Data
@ToString
public class AddressBean implements Serializable {
    private Long id;

    private Long uid;

    private String uname;

    private Long areaid;

    private String sitename;

    private String phone;

    private Long status;

    private Long s1;
}
