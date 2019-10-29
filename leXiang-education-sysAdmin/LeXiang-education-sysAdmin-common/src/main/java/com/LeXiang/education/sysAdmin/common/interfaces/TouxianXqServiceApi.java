package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.TouxianXq;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface TouxianXqServiceApi {
    @RequestMapping("/findXqTouxian")
    PageBean<TouxianXq> findXqTouxian(@RequestParam Integer page, @RequestParam Integer rows, @RequestBody TouxianXq touxianXq);

    @RequestMapping("/addXqTouxian")
    void addXqTouxian(@RequestBody TouxianXq touxianXq);

    @RequestMapping("/updTouxianStatus")
    void updTouxianStatus(@RequestParam Integer id, @RequestParam Integer status);

    @RequestMapping("/findXqTouxianOne")
    TouxianXq findXqTouxianOne(@RequestParam Integer id);

    @RequestMapping("/updXqTouxian")
    void updXqTouxian(@RequestBody TouxianXq touxianXq);

    @RequestMapping("/delXqTouxians")
    void delXqTouxians(@RequestParam Integer[] ids);
}
