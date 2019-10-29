package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.MessageXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.service.MessageXqServcie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: MessageXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-21 17:15
 **/
@RestController
public class MessageXqController implements MessageXqServiceApi {

    @Autowired
    private MessageXqServcie messageXqServcie;

    @Override
    public PageBean<MessageXq> findXqMessage(Integer page, Integer rows, MessageXq messageXq) {
        return messageXqServcie.findXqMessage(page,rows,messageXq);
    }

    @Override
    public PageBean<MessageXq> findXqMessageHuiShou(Integer page, Integer rows, MessageXq messageXq) {
        return messageXqServcie.findXqMessageHuiShou(page,rows,messageXq);
    }

    @Override
    public void huishouById(Integer id) {
        messageXqServcie.huishouById(id);
    }

    @Override
    public void huishouByIds(Integer[] ids) {
        messageXqServcie.huishouByIds(ids);
    }

    @Override
    public void huifuById(Integer id) {
        messageXqServcie.huifuById(id);
    }

    @Override
    public void delMessageByIds(Integer[] ids) {
        messageXqServcie.delMessageByIds(ids);
    }
}