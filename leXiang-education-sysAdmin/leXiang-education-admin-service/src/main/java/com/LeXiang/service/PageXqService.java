package com.jk.service;

import com.LeXiang.education.sysAdmin.common.interfaces.PageXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;

public interface PageXqService{
    PageBean findPage(Integer page, Integer rows);

    void delPageById(Integer id);

    void addxqpage(PageXq pageXq);

    void delPageByIds(Integer[] ids);

    PageXq toupdXqPage(Integer id);

    void updXqPage(PageXq pageXq);
}
