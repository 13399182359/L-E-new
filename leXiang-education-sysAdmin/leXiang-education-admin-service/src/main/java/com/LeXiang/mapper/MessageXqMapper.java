package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.MessageXq;

import java.util.HashMap;
import java.util.List;

public interface MessageXqMapper {
    int count(MessageXq messageXq);

    List<MessageXq> findXqMessage(HashMap<String, Object> m);

    int countHS(MessageXq messageXq);

    List<MessageXq> findXqMessageHuiShou(HashMap<String, Object> m);

    void huishouById(Integer id);

    void huifuById(Integer id);

    void delMessageByIds(Integer id);

}
