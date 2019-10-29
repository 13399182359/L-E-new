package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;

import java.util.HashMap;
import java.util.List;

public interface PageXqMapper {
    int count();

    List<PageXq> findPage(HashMap<String, Object> m);

    void detById(Integer id);

    void addxqpage(PageXq pageXq);

    PageXq toupdXqPage(Integer id);

    void updXqPage(PageXq pageXq);
}
