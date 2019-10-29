package com.LeXiang.education.sysAdmin.common.model;

import java.util.Date;

/**
 * @类名: Information
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-17 17:02
 **/
public class Information {

    private Integer id;
    private String no;
    private String title;
    private Integer type;
    private Date createdate;
    private String source;
    private Integer recommed;
    private String content;
    private String img;
    private Integer orderid;
    private Integer count;

    @Override
    public String toString() {
        return "Information{" +
                "id=" + id +
                ", no='" + no + '\'' +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", createdate=" + createdate +
                ", source='" + source + '\'' +
                ", recommed=" + recommed +
                ", content='" + content + '\'' +
                ", img='" + img + '\'' +
                ", orderid=" + orderid +
                ", count=" + count +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Integer getRecommed() {
        return recommed;
    }

    public void setRecommed(Integer recommed) {
        this.recommed = recommed;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}