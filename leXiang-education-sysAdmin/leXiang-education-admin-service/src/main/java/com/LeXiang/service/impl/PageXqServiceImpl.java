package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;
import com.jk.mapper.PageXqMapper;
import com.jk.service.PageXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: PageXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-18 19:53
 **/
@Service
public class PageXqServiceImpl implements PageXqService {

    @Autowired
    private PageXqMapper pageXqMapper;

    @Override
    public PageBean findPage(Integer page, Integer rows) {
        int total =  pageXqMapper.count();
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        PageBean<PageXq> pageBean = new PageBean<PageXq>(page,rows,total);
        List<PageXq> list=pageXqMapper.findPage(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void delPageById(Integer id) {
        pageXqMapper.detById(id);
    }

    @Override
    public void addxqpage(PageXq pageXq) {
        pageXqMapper.addxqpage(pageXq);
    }

    @Override
    public void delPageByIds(Integer[] ids) {
        for(Integer id : ids){
            pageXqMapper.detById(id);
        }
    }

    @Override
    public PageXq toupdXqPage(Integer id) {
        return pageXqMapper.toupdXqPage(id);
    }

    @Override
    public void updXqPage(PageXq pageXq) {
        pageXqMapper.updXqPage(pageXq);
    }
}