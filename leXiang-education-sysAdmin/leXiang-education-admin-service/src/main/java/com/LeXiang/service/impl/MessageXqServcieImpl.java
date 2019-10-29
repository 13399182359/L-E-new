package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.UserXq;
import com.jk.mapper.MessageXqMapper;
import com.jk.service.MessageXqServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: MessageXqServcieImpl
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-21 17:16
 **/
@Service
public class MessageXqServcieImpl implements MessageXqServcie {

    @Autowired
    private MessageXqMapper messageXqMapper;

    @Override
    public PageBean<MessageXq> findXqMessage(Integer page, Integer rows, MessageXq messageXq) {
        int total =  messageXqMapper.count(messageXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("messageXq",messageXq);
        PageBean<MessageXq> pageBean = new PageBean<MessageXq>(page,rows,total);
        List<MessageXq> list=messageXqMapper.findXqMessage(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public PageBean<MessageXq> findXqMessageHuiShou(Integer page, Integer rows, MessageXq messageXq) {
        int total =  messageXqMapper.countHS(messageXq);
        HashMap<String,Object> m = new HashMap<>();
        int pagemun = (page-1)*rows;
        m.put("page",pagemun);
        m.put("rows",rows);
        m.put("messageXq",messageXq);
        PageBean<MessageXq> pageBean = new PageBean<MessageXq>(page,rows,total);
        List<MessageXq> list=messageXqMapper.findXqMessageHuiShou(m);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void huishouById(Integer id) {
        messageXqMapper.huishouById(id);
    }

    @Override
    public void huishouByIds(Integer[] ids) {
        for (Integer id: ids) {
            messageXqMapper.huishouById(id);
        }
    }

    @Override
    public void huifuById(Integer id) {
        messageXqMapper.huifuById(id);
    }

    @Override
    public void delMessageByIds(Integer[] ids) {
        for (Integer id: ids) {
            messageXqMapper.delMessageByIds(id);
        }
    }
}