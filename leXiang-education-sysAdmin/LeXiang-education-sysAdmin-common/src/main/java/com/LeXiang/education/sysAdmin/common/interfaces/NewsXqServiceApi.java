package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface NewsXqServiceApi {


    @RequestMapping("/findXqNews")
    PageBean<NewsXq> findXqNews(@RequestParam Integer page, @RequestParam Integer rows, @RequestBody NewsXq newsXq);

    @RequestMapping("/delNewsXq")
    void delNewsXq(@RequestParam Integer id);
}
