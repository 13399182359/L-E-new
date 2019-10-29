package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface MessageXqServcie {
    PageBean<MessageXq> findXqMessage(Integer page, Integer rows, MessageXq messageXq);

    PageBean<MessageXq> findXqMessageHuiShou(Integer page, Integer rows, MessageXq messageXq);

    void huishouById(Integer id);

    void huishouByIds(Integer[] ids);

    void huifuById(Integer id);

    void delMessageByIds(Integer[] ids);
}
