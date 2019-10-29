package com.LeXiang.education.order.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
public class WPay implements Serializable {
    private Long payid;

    private String username;

    private String usertype;

    private Double payment;

    private Long buytype;

    private String payremark;
    private String paycreatdate;

    private Integer paystatus;
    private String paylastdate;

    private Long orderid;

    private Long paytype;


}