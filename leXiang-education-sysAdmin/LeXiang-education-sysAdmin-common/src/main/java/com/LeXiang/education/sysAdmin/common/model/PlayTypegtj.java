package com.LeXiang.education.sysAdmin.common.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @类名: PlayTypegtj
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-23 20:03
 **/
@Data
@ToString
public class PlayTypegtj implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    private String name;
    private Long pid;

    public PlayTypegtj() {
    }

    public PlayTypegtj(Long id, String name, Long pid) {
        this.id = id;
        this.name = name;
        this.pid = pid;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "PlayTypegtj{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pid=" + pid +
                '}';
    }
}
