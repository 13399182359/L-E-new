package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.mapper.FeedbackXqMapper;
import com.jk.service.FeedbackXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: FeedbackXqServiceImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-23 14:05
 **/
@Service
public class FeedbackXqServiceImpl implements FeedbackXqService {

    @Autowired
    private FeedbackXqMapper feedbackXqMapper;

    @Override
    public PageBean<FeedbackXq> findXqFeedback(Integer page, Integer rows, FeedbackXq feedbackXq) {
        int total =  feedbackXqMapper.count(feedbackXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("messageXq",feedbackXq);
        PageBean<FeedbackXq> pageBean = new PageBean<FeedbackXq>(page,rows,total);
        List<FeedbackXq> list=feedbackXqMapper.findXqFeedback(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void delFeedbackXq(Integer id) {
        feedbackXqMapper.delFeedbackXq(id);
    }

    @Override
    public void delFeedbackXqs(Integer[] ids) {
        for (Integer id:ids) {
            feedbackXqMapper.delFeedbackXq(id);
        }
    }
}