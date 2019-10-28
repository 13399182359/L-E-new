package com.LeXiang.controller;


import com.LeXiang.education.user.common.interfaces.UserServiceApi;
import com.LeXiang.education.user.common.model.PageBean;
import com.LeXiang.education.user.common.model.User;
import com.LeXiang.education.user.common.model.UserEntity;
import com.LeXiang.mapper.UserMapper;
import com.LeXiang.service.UserSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@RestController
@Component
public class UserController implements UserServiceApi {

    @Autowired
    private UserSerivce userSerivce;



    @Override
    public void regist(User user) {
        userSerivce.regist(user);
    }


    @Override
    public User getUserByName(String username) {
        return userSerivce.getUserByName(username);
    }



//    @Value("${foo}")
//    String foo;



//    @RequestMapping("/hi")
//    public String hi() {
//        return foo;
//    }
}
