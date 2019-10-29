package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.MiaoshaXqMapper;
import com.LeXiang.service.MiaoshaXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @类名: MiaoshaXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 20:52
 **/
@Service
public class MiaoshaXqServiceImpl implements MiaoshaXqService {

    @Autowired
    private MiaoshaXqMapper miaoshaXqMapper;

    @Override
    public PageBean<MiaoshaXq> findXqMiaosha(Integer page, Integer rows, MiaoshaXq miaoshaXq) {
        int total =  miaoshaXqMapper.count(miaoshaXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("miaoshaXq",miaoshaXq);
        PageBean<MiaoshaXq> pageBean = new PageBean<MiaoshaXq>(page,rows,total);
        List<MiaoshaXq> list=miaoshaXqMapper.findXqDazhe(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void addXqMiaosha(MiaoshaXq miaoshaXq) {
        miaoshaXq.setCid((long)1);
        miaoshaXq.setCreatetime(new Date());
        miaoshaXqMapper.addXqMiaosha(miaoshaXq);
    }

    @Override
    public void delMiaoshaXq(Integer id) {
        miaoshaXqMapper.delMiaoshaXq(id);
    }

    @Override
    public void delMiaoshaXqs(Integer[] ids) {
        for (Integer id:ids) {
            miaoshaXqMapper.delMiaoshaXq(id);
        }
    }

    @Override
    public MiaoshaXq findXqMiaoshaOne(Integer id) {
        return miaoshaXqMapper.findXqMiaoshaOne(id);
    }

    @Override
    public void updMiaoShaXq(MiaoshaXq miaoshaXq) {
        miaoshaXqMapper.updMiaoShaXq(miaoshaXq);
    }
}