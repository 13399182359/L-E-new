package com.LeXiang.education.sysAdmin.common.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @类名: MessageXq
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-21 16:52
 **/
public class MessageXq {

    private Integer id;
    private Long sender;
    private Long source;
    private String member;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date time;
    private Integer status;
    private String username;

    @Override
    public String toString() {
        return "MessageXq{" +
                "id=" + id +
                ", sender=" + sender +
                ", source=" + source +
                ", member='" + member + '\'' +
                ", content='" + content + '\'' +
                ", time=" + time +
                ", status=" + status +
                ", username='" + username + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getSender() {
        return sender;
    }

    public void setSender(Long sender) {
        this.sender = sender;
    }

    public Long getSource() {
        return source;
    }

    public void setSource(Long source) {
        this.source = source;
    }

    public String getMember() {
        return member;
    }

    public void setMember(String member) {
        this.member = member;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public MessageXq() {
    }

    public MessageXq(Integer id, Long sender, Long source, String member, String content, Date time, Integer status, String username) {
        this.id = id;
        this.sender = sender;
        this.source = source;
        this.member = member;
        this.content = content;
        this.time = time;
        this.status = status;
        this.username = username;
    }
}