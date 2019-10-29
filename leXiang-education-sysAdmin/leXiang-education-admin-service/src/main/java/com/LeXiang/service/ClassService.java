package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Class;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface ClassService {
    PageBean<Class> findClass(Class cls, Integer page, Integer rows);

    Boolean insert(Class cls);

    Boolean delete(Long id);

    Class queryUserById(Long id);

    Boolean update(Class cls);

    void delById(Long[] ids);

    PageBean<Class> findStatus(Integer page, Integer rows);

    Boolean updStatus(Long id);

    Boolean updateStatus(Long id);

    Boolean ismarketing(Long id);

    Boolean ismarketings(Long id);

    void updIsmarketing(Long[] ids);

    void updIsmarketings(Long[] ids);
}
