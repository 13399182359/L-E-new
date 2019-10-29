package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.Class;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface ClassServiceApi {

    @RequestMapping
    public PageBean<Class> findClass(@RequestBody Class cls, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/findStatus")
    public PageBean<Class> findStatus(@RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/insert")
    public Boolean insert(@RequestBody Class cls);

    @RequestMapping("/delete")
    public Boolean delete(@RequestBody Long id);

    @RequestMapping("/queryUserById")
    public Class queryUserById(@RequestBody Long id);

    @RequestMapping("/update")
    public Boolean update(@RequestBody Class cls);

    @RequestMapping("/delById")
    public void delById(@RequestBody Long[] ids);

    @RequestMapping("/updStatus")
    public Boolean updStatus(@RequestBody Long id);

    @RequestMapping("/updateStatus")
    public Boolean updateStatus(@RequestBody Long id);

    @RequestMapping("/ismarketing")
    public Boolean ismarketing(@RequestBody Long id);

    @RequestMapping("/ismarketings")
    public Boolean ismarketings(@RequestBody Long id);

    @RequestMapping("/updIsmarketing")
    public void updIsmarketing(@RequestBody Long[] ids);

    @RequestMapping("/updIsmarketings")
    public void updIsmarketings(@RequestBody Long[] ids);
}
