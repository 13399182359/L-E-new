package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.TouxianXq;

public interface TouxianXqService {
    PageBean<TouxianXq> findXqTouxian(Integer page, Integer rows, TouxianXq touxianXq);

    void addXqTouxian(TouxianXq touxianXq);

    void updTouxianStatus(Integer id, Integer status);

    TouxianXq findXqTouxianOne(Integer id);

    void updXqTouxian(TouxianXq touxianXq);

    void delXqTouxians(Integer[] ids);
}
