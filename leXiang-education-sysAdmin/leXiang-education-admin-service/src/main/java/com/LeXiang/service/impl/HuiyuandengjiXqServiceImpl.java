package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.mapper.HuiyuandengjiXqMapper;
import com.jk.service.HuiyuandengjiXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: HuiyuandengjiXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 14:14
 **/
@Service
public class HuiyuandengjiXqServiceImpl implements HuiyuandengjiXqService {

    @Autowired
    private HuiyuandengjiXqMapper huiyuandengjiXqMapper;

    @Override
    public PageBean<HuiyuandengjiXq> findXqHuiyuandengji(Integer page, Integer rows, HuiyuandengjiXq huiyuandengjiXq) {
        int total =  huiyuandengjiXqMapper.count(huiyuandengjiXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("huiyuandengjiXq",huiyuandengjiXq);
        PageBean<HuiyuandengjiXq> pageBean = new PageBean<HuiyuandengjiXq>(page,rows,total);
        List<HuiyuandengjiXq> list=huiyuandengjiXqMapper.findXqHuiyuandengji(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void updStatus(Integer id, Integer status) {
        if (status==1){
            status=0;
        }else{
            status=1;
        }
        huiyuandengjiXqMapper.updStatus(id,status);
    }

    @Override
    public void addXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq) {
        huiyuandengjiXq.setStatus(1);
        huiyuandengjiXqMapper.addXqHuiyuandengji(huiyuandengjiXq);
    }

    @Override
    public HuiyuandengjiXq toupdHuiyuanXq(Integer id) {
        return huiyuandengjiXqMapper.toupdHuiyuanXq(id);
    }

    @Override
    public void updXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq) {

        huiyuandengjiXqMapper.updXqHuiyuandengji(huiyuandengjiXq);
    }

    @Override
    public void delHuiyuanXqs(Integer[] ids) {
        for (Integer id: ids) {
            huiyuandengjiXqMapper.delHuiyuanXqs(id);
        }
    }

}