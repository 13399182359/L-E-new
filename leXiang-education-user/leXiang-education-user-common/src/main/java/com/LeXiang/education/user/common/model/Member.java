package com.LeXiang.education.user.common.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Member implements Serializable {
    private Long id;

    private String address;

    private BigDecimal amount;



    private BigDecimal balance;

    @DateTimeFormat(pattern = "yyyy-MM-dd")

    private Date birth;

    private String email;

    private String encodedpassword;

    private Integer gender;

    private String mobile;

    private String name;

    private String phone;

    private Long point;
    @DateTimeFormat(pattern = "yyyy-MM-dd")

    private Date safekeyexpire;

    private String safekeyvalue;

    private String username;

    private String zipcode;

    private Long areaId;

    private Long memberrankId;



}