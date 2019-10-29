package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Remark;
import com.LeXiang.mapper.RemarkCyqMapper;
import com.LeXiang.service.RemarkCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: RemarkCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 14:46
 **/
@Service
public class RemarkCyqServiceImpl implements RemarkCyqService {

    @Autowired
    private RemarkCyqMapper remarkCyqMapper;

    @Override
    public PageBean<Remark> findRemark(Remark remark, Integer page, Integer rows) {
        int total = remarkCyqMapper.findRemarkCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNum = (page -1) * rows;
        map.put("remark",remark);
        map.put("page",pageNum);
        map.put("rows",rows);
        List<Remark> list = remarkCyqMapper.findRemark(map);
        PageBean<Remark> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public void deleteRemark(Long id) {
        remarkCyqMapper.deleteRemark(id);
    }

    @Override
    public void deleteRemarkIds(Long[] ids) {
        for (Long id:ids) {
            remarkCyqMapper.deleteRemark(id);
        }
    }

    @Override
    public void updRemarkShow(Long id) {
        remarkCyqMapper.updRemarkShow(id);
    }

    @Override
    public void remarkShowUpd(Long id) {
        remarkCyqMapper.remarkShowUpd(id);
    }
}

