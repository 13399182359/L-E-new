package com.LeXiang.education.sysAdmin.common.interfaces;



import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface InformationServiceApi {

    @RequestMapping("/findInformation")
    public PageBean findInformation(@RequestParam Integer page, @RequestParam Integer rows , @RequestBody Information information);

    @RequestMapping("/toupd")
    public Information toupd(@RequestParam("id")Integer id);

    @RequestMapping("/addInformation")
    public void addInformation(@RequestBody Information information);

    @RequestMapping("/delById")
    public void delById(@RequestParam("ids") Integer[] ids);

    @RequestMapping("/updInformation")
    public void updInformation(@RequestBody Information information);



   /* @RequestMapping("/userList")
    public PageBean<Admin> userList(@RequestBody Admin admin, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/insert")
    public Boolean insert(@RequestBody Admin user);
    @RequestMapping("/delete")
    public Boolean delete(@RequestBody Long id);
    @RequestMapping("/queryUserById")
    public Admin queryUserById(@RequestBody Long id);
    @RequestMapping("/update")
    public Boolean update(@RequestBody Admin user);*/
}
