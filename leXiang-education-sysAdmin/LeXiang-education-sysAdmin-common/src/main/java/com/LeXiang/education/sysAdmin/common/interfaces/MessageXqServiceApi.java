package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface MessageXqServiceApi {

    @RequestMapping("/findXqMessage")
    PageBean<MessageXq> findXqMessage(@RequestParam Integer page,@RequestParam Integer rows,@RequestBody MessageXq messageXq);

    @RequestMapping("/findXqMessageHuiShou")
    PageBean<MessageXq> findXqMessageHuiShou(@RequestParam Integer page,@RequestParam Integer rows,@RequestBody MessageXq messageXq);

    @RequestMapping("/huishouById")
    void huishouById(@RequestParam Integer id);

    @RequestMapping("/huishouByIds")
    void huishouByIds(@RequestParam Integer[] ids);

    @RequestMapping("/huifuById")
    void huifuById(@RequestParam Integer id);

    @RequestMapping("/delMessageByIds")
    void delMessageByIds(@RequestParam Integer[] ids);
}
