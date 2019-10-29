package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Class;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.ClassMapper;
import com.LeXiang.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @类名: ClassServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-16 16:41
 **/
@Service
public class ClassServiceImpl implements ClassService {

    @Autowired
    private ClassMapper classMapper;

    @Override
    public PageBean<Class> findClass(Class cls, Integer page, Integer rows) {
        int totalSize = classMapper.getCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cls",cls);
        PageBean<Class> clssPageBean = new PageBean<Class>(page, rows, totalSize);
        List<Class> userList = classMapper.userList(map);
        clssPageBean.setList(userList);
        return clssPageBean;
    }

    @Override
    public Boolean insert(Class cls) {
        if (cls.getCreateTime() == null){
            cls.setCreateTime(new Date());
        }
        if (cls.getStatus() == null){
            cls.setStatus(1);
        }
        return classMapper.insert(cls);
    }

    @Override
    public Boolean delete(Long id) {
        return classMapper.delete(id);
    }

    @Override
    public Class queryUserById(Long id) {
        return classMapper.queryUserById(id);
    }

    @Override
    public Boolean update(Class cls) {
        if (cls.getDowndate() == null){
            cls.setDowndate(new Date());
        }
        return classMapper.update(cls);
    }

    @Override
    public void delById(Long[] ids) {
        for (Long id : ids){
            classMapper.delete(id);
        }
    }

    @Override
    public PageBean<Class> findStatus(Integer page, Integer rows) {
        int totalSize = classMapper.getCountStatus();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        PageBean<Class> clssPageBean = new PageBean<Class>(page, rows, totalSize);
        List<Class> userList = classMapper.findStatus(map);
        clssPageBean.setList(userList);
        return clssPageBean;
    }

    @Override
    public Boolean updStatus(Long id) {
        return classMapper.updStatus(id);
    }

    @Override
    public Boolean updateStatus(Long id) {
        return classMapper.updateStatus(id);
    }

    @Override
    public Boolean ismarketing(Long id) {
        return classMapper.ismarketing(id);
    }

    @Override
    public Boolean ismarketings(Long id) {
        return classMapper.ismarketings(id);
    }

    @Override
    public void updIsmarketing(Long[] ids) {
        for (Long id:ids) {
            classMapper.ismarketing(id);
        }
    }

    @Override
    public void updIsmarketings(Long[] ids) {
        for (Long id:ids) {
            classMapper.ismarketings(id);
        }
    }
}

