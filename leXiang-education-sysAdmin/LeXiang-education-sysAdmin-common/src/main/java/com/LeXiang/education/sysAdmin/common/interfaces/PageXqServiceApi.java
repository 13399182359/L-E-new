package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface PageXqServiceApi {

    @RequestMapping("/findPage")
    public PageBean findPage(@RequestParam Integer page, @RequestParam Integer rows );

    @RequestMapping("/delPageById")
    void delPageById(@RequestParam Integer id);

    @RequestMapping("/addxqpage")
    void addxqpage(@RequestBody PageXq pageXq);

    @RequestMapping("/delPageByIds")
    void delPageByIds(@RequestParam Integer[] ids);

    @RequestMapping("/toupdXqPage")
    PageXq toupdXqPage(@RequestParam Integer id);

    @RequestMapping("/updXqPage")
    void updXqPage(@RequestBody PageXq pageXq);
}
