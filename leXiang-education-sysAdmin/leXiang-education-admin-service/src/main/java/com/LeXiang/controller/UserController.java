package com.LeXiang.controller;


import com.LeXiang.education.sysAdmin.common.interfaces.UserServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Admin;
import com.LeXiang.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class UserController implements UserServiceApi {

    @Autowired
    private UserSerivce userSerivce;

    @Override
    public Map<String, Object> adminLogin(Admin admin) {
        return userSerivce.adminLogin(admin);
    }

    @Override
    public Admin getUserByName(String userName) {
        return userSerivce.getUserByName(userName);
    }

//    @Value("${foo}")
//    String foo;


//    @RequestMapping("/hi")
//    public String hi() {
//        return foo;
//    }
}
