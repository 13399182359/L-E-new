package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.TouxianXq;
import com.LeXiang.mapper.TouxianXqMapper;
import com.LeXiang.service.TouxianXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: TouxianXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 18:41
 **/
@Service
public class TouxianXqServiceImpl implements TouxianXqService {

    @Autowired
    private TouxianXqMapper touxianXqMapper;


    @Override
    public PageBean<TouxianXq> findXqTouxian(Integer page, Integer rows, TouxianXq touxianXq) {
        int total =  touxianXqMapper.count(touxianXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("touxianXq",touxianXq);
        PageBean<TouxianXq> pageBean = new PageBean<TouxianXq>(page,rows,total);
        List<TouxianXq> list=touxianXqMapper.findXqTouxian(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void addXqTouxian(TouxianXq touxianXq) {
        touxianXq.setStatus(1);
        touxianXqMapper.addXqTouxian(touxianXq);
    }

    @Override
    public void updTouxianStatus(Integer id, Integer status) {
        if (status==1){
            status=0;
        }else{
            status=1;
        }
        touxianXqMapper.updTouxianStatus(id,status);
    }

    @Override
    public TouxianXq findXqTouxianOne(Integer id) {
        return touxianXqMapper.findXqTouxianOne(id);
    }

    @Override
    public void updXqTouxian(TouxianXq touxianXq) {
        touxianXqMapper.updXqTouxian(touxianXq);
    }

    @Override
    public void delXqTouxians(Integer[] ids) {
        for (Integer id: ids) {
            touxianXqMapper.delXqTouxian(id);
        }
    }
}