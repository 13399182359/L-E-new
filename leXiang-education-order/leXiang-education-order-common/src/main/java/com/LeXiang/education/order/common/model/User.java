package com.LeXiang.education.order.common.model;

import lombok.Data;
import lombok.ToString;

import java.util.Date;
@Data
@ToString
public class User {
    private Long id;

    private String address;

    private Long amount;

    private Long balance;

    private String birth;

    private String email;

    private String encodedpassword;

    private Integer gender;

    private String mobile;

    private String name;

    private String phone;

    private Long point;

    private String safekeyexpire;

    private String safekeyvalue;

    private String username;

    private String zipcode;

    private Long areaId;

    private Long memberrankId;


}