package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.ClassServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Class;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: ClassController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-16 16:39
 **/
@RestController
public class ClassController implements ClassServiceApi {

    @Autowired
    private ClassService classService;

    @Override
    public PageBean<Class> findClass(Class cls, Integer page, Integer rows) {
        return classService.findClass(cls,page,rows);
    }

    @Override
    public PageBean<Class> findStatus(Integer page, Integer rows) {
        return classService.findStatus(page,rows);
    }

    @Override
    public Boolean insert(Class cls) {
        return classService.insert(cls);
    }

    @Override
    public Boolean delete(Long id) {
        return classService.delete(id);
    }

    @Override
    public Class queryUserById(Long id) {
        return classService.queryUserById(id);
    }

    @Override
    public Boolean update(Class cls) {
        return classService.update(cls);
    }

    @Override
    public void delById(Long[] ids) {
       classService.delById(ids);
    }

    @Override
    public Boolean updStatus(Long id) {
        return classService.updStatus(id);
    }

    @Override
    public Boolean updateStatus(Long id) {
        return classService.updateStatus(id);
    }

    @Override
    public Boolean ismarketing(Long id) {
        return classService.ismarketing(id);
    }

    @Override
    public Boolean ismarketings(Long id) {
        return classService.ismarketings(id);
    }

    @Override
    public void updIsmarketing(Long[] ids) {
        classService.updIsmarketing(ids);
    }

    @Override
    public void updIsmarketings(Long[] ids) {
        classService.updIsmarketings(ids);
    }
}

