package com.LeXiang.education.order.common.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
public class With implements Serializable {
    private Long widthdrawid;

    private String username;

    private Double withdrawment;

    private Long withdrawtype;

    private String withdrawname;

    private String withdrawaccount;
    private String wcreatdate;

    private Integer withdrawstatus;

    private String wenddate;

    private String wdisposedate;
    private String wlosers;
    private String wcanceldate;
    private String wcancells;

    public With() {
    }

    public With(Long widthdrawid, String username, Double withdrawment, Long withdrawtype, String withdrawname, String withdrawaccount, String wcreatdate, Integer withdrawstatus, String wenddate, String wdisposedate, String wlosers, String wcanceldate, String wcancells) {
        this.widthdrawid = widthdrawid;
        this.username = username;
        this.withdrawment = withdrawment;
        this.withdrawtype = withdrawtype;
        this.withdrawname = withdrawname;
        this.withdrawaccount = withdrawaccount;
        this.wcreatdate = wcreatdate;
        this.withdrawstatus = withdrawstatus;
        this.wenddate = wenddate;
        this.wdisposedate = wdisposedate;
        this.wlosers = wlosers;
        this.wcanceldate = wcanceldate;
        this.wcancells = wcancells;
    }
}