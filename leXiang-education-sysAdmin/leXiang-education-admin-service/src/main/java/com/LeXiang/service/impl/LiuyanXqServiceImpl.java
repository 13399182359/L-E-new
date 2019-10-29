package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.LiuyanXqMapper;
import com.LeXiang.service.LiuyanXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: LiuyanXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 13:35
 **/
@Service
public class LiuyanXqServiceImpl implements LiuyanXqService {

    @Autowired
    private LiuyanXqMapper liuyanXqMapper;

    @Override
    public PageBean<LiuyanXq> findXqLiuyan(Integer page, Integer rows, LiuyanXq liuyanXq) {
        int total =  liuyanXqMapper.count(liuyanXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("liuyanXq",liuyanXq);
        PageBean<LiuyanXq> pageBean = new PageBean<LiuyanXq>(page,rows,total);
        List<LiuyanXq> list=liuyanXqMapper.findXqLiuyan(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void huishouLiuyanXq(Integer id) {
        liuyanXqMapper.huishouLiuyanXq(id);
    }

    @Override
    public void huishouLiuyanXqs(Integer[] ids) {
        for (Integer id: ids) {
            liuyanXqMapper.huishouLiuyanXq(id);
        }
    }

    @Override
    public PageBean<LiuyanXq> findXqLiuyanHS(Integer page, Integer rows, LiuyanXq liuyanXq) {
        int total =  liuyanXqMapper.countHS(liuyanXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("liuyanXq",liuyanXq);
        PageBean<LiuyanXq> pageBean = new PageBean<LiuyanXq>(page,rows,total);
        List<LiuyanXq> list=liuyanXqMapper.findXqLiuyanHS(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void huifuLiuyanXq(Integer id) {
        liuyanXqMapper.huifuLiuyanXq(id);
    }

    @Override
    public void delLiuyanXqs(Integer[] ids) {
        for (Integer id:ids) {
            liuyanXqMapper.delLiuyanXqs(id);
        }
    }
}