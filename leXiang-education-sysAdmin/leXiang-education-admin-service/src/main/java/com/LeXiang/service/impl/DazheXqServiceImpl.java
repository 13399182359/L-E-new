package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.DazheXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PlayClassgtj;
import com.jk.mapper.DazheXqMapper;
import com.jk.service.DazheXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @类名: DazheXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 15:49
 **/
@Service
public class DazheXqServiceImpl implements DazheXqService {

    @Autowired
    private DazheXqMapper dazheXqMapper;

    @Override
    public PageBean<DazheXq> findXqDazhe(Integer page, Integer rows, DazheXq dazheXq) {
        int total =  dazheXqMapper.count(dazheXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("dazheXq",dazheXq);
        PageBean<DazheXq> pageBean = new PageBean<DazheXq>(page,rows,total);
        List<DazheXq> list=dazheXqMapper.findXqDazhe(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void delDazheXq(Integer id) {
        dazheXqMapper.delDazheXq(id);
    }

    @Override
    public void delDazheXqs(Integer[] ids) {
        for (Integer id:ids) {
            dazheXqMapper.delDazheXq(id);
        }
    }

    @Override
    public DazheXq findXqDazheOne(Integer id) {
        return dazheXqMapper.findXqDazheOne(id);
    }

    @Override
    public void updDazheXq(DazheXq dazheXq) {
        dazheXqMapper.updDazheXq(dazheXq);
    }

    @Override
    public void addXqDazhe(DazheXq dazheXq) {
        dazheXq.setCid((long)1);
        dazheXq.setCreatetime(new Date());
        dazheXqMapper.addXqDazhe(dazheXq);
    }

    /*@Override
    public List<PlayClassgtj> findpalyclass() {
        return dazheXqMapper.findpalyclass();
    }*/
}