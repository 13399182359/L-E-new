package com.LeXiang.education.sysAdmin.common.interfaces;



import com.LeXiang.education.sysAdmin.common.model.Admin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import sun.security.provider.DSAPublicKeyImpl;

import java.util.HashMap;
import java.util.Map;

public interface UserServiceApi {

    /**
     * 用户列表查询
     * @param
     * @return
     */
    @RequestMapping("admimLogin")
    public Map<String,Object> adminLogin(@RequestBody Admin admin);

    @RequestMapping("getUserByName")
    public Admin getUserByName(@RequestBody String userName);










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
