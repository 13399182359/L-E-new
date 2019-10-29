package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import com.jk.mapper.InformationMapper;
import com.jk.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @类名: InformationServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-16 20:18
 **/
@Service
public class InformationServiceImpl implements InformationService {

    @Autowired
    private InformationMapper informationMapper;

    @Override
    public PageBean<Information> findInformation(Integer page, Integer rows, Information information) {
        int total =  informationMapper.count(information);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("information",information);
        PageBean<Information> pageBean = new PageBean<Information>(page,rows,total);
        List<Information> list=informationMapper.selectInformation(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public Information toupd(Integer id) {
        return informationMapper.toupd(id);
    }

    @Override
    public void addInformation(Information information) {
        int a = (int)((Math.random()*9+1)*100000);
        if(information.getNo()==null){
            information.setNo(a+"");
        }
        if(information.getCreatedate()==null){
            information.setCreatedate(new Date());
        }
        if(information.getRecommed()==null){
            information.setRecommed(1);
        }
        informationMapper.addInformation(information);
    }

    @Override
    public void delById(Integer[] ids) {
        for (int i = 0; i < ids.length; i++) {
            informationMapper.delById(ids[i]);
        }
    }

    @Override
    public void updInformation(Information information) {
        if(information.getCreatedate()==null){
            information.setCreatedate(new Date());
        }
        informationMapper.updInformation(information);
    }
}